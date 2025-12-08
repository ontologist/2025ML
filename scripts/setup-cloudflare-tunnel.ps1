# Cloudflare Tunnel Setup Script
# Sets up Cloudflare Tunnel for HTTPS access to backend API
# Usage: .\setup-cloudflare-tunnel.ps1 -CourseId "blender" -CourseName "2025BlenderUnity3DIntroClass" -Port 8003 -Domain "yourdomain.com"

param(
    [Parameter(Mandatory=$true)]
    [string]$CourseId,
    
    [Parameter(Mandatory=$true)]
    [string]$CourseName,
    
    [Parameter(Mandatory=$true)]
    [int]$Port,
    
    [Parameter(Mandatory=$true)]
    [string]$Domain,  # e.g., "tijerino.ai"
    
    [string]$Subdomain = ""  # Auto-generated if not provided
)

$scriptPath = Split-Path -Parent $MyInvocation.MyCommand.Path
$projectRoot = Split-Path -Parent $scriptPath

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Cloudflare Tunnel Setup for $CourseName" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Auto-generate subdomain if not provided
if ([string]::IsNullOrEmpty($Subdomain)) {
    $Subdomain = "${CourseId}bot"
}

$fullHostname = "${Subdomain}.${Domain}"
$tunnelName = "${CourseId}-bot"

Write-Host "Configuration:" -ForegroundColor Cyan
Write-Host "  Course: $CourseName" -ForegroundColor White
Write-Host "  Port: $Port" -ForegroundColor White
Write-Host "  Domain: $Domain" -ForegroundColor White
Write-Host "  Subdomain: $Subdomain" -ForegroundColor White
Write-Host "  Full Hostname: $fullHostname" -ForegroundColor White
Write-Host "  Tunnel Name: $tunnelName" -ForegroundColor White
Write-Host ""

# Check if cloudflared is installed
Write-Host "Checking for cloudflared..." -ForegroundColor Yellow
$cloudflared = Get-Command cloudflared -ErrorAction SilentlyContinue

if (-not $cloudflared) {
    Write-Host "⚠ cloudflared not found. Installing..." -ForegroundColor Yellow
    
    # Try winget first
    $winget = Get-Command winget -ErrorAction SilentlyContinue
    if ($winget) {
        Write-Host "Installing via winget..." -ForegroundColor Yellow
        winget install --id Cloudflare.cloudflared --accept-package-agreements --accept-source-agreements
    } else {
        Write-Host "❁EPlease install cloudflared manually:" -ForegroundColor Red
        Write-Host "   Download from: https://github.com/cloudflare/cloudflared/releases/latest" -ForegroundColor Yellow
        Write-Host "   Or install winget and run: winget install --id Cloudflare.cloudflared" -ForegroundColor Yellow
        exit 1
    }
}

# Check if logged in
Write-Host "`nChecking Cloudflare login..." -ForegroundColor Yellow
$loginCheck = cloudflared tunnel list 2>&1
if ($LASTEXITCODE -ne 0 -or $loginCheck -match "not logged in") {
    Write-Host "⚠ Not logged in to Cloudflare. Please login:" -ForegroundColor Yellow
    Write-Host "   Run: cloudflared tunnel login" -ForegroundColor Cyan
    Write-Host "   This will open your browser to authorize." -ForegroundColor Gray
    Write-Host ""
    $login = Read-Host "Press Enter after you've logged in, or 'n' to skip"
    if ($login -eq 'n') {
        Write-Host "Skipping login. You can run 'cloudflared tunnel login' later." -ForegroundColor Yellow
    }
}

# Create tunnel
Write-Host "`nCreating tunnel: $tunnelName..." -ForegroundColor Yellow
$tunnelCreate = cloudflared tunnel create $tunnelName 2>&1
$tunnelId = $null

if ($tunnelCreate -match 'Created tunnel ([a-f0-9-]+)') {
    $tunnelId = $matches[1]
    Write-Host "✁ETunnel created: $tunnelId" -ForegroundColor Green
} elseif ($tunnelCreate -match 'already exists') {
    Write-Host "⚠ Tunnel already exists. Getting tunnel info..." -ForegroundColor Yellow
    $tunnelList = cloudflared tunnel list
    $tunnelLine = ($tunnelList | Select-String $tunnelName).ToString()
    if ($tunnelLine -match '([a-f0-9-]+)') {
        $tunnelId = $matches[1]
        Write-Host "✁EUsing existing tunnel: $tunnelId" -ForegroundColor Green
    }
} else {
    Write-Host "❁EFailed to create tunnel. Error:" -ForegroundColor Red
    Write-Host $tunnelCreate -ForegroundColor Red
    exit 1
}

if (-not $tunnelId) {
    Write-Host "❁ECould not get tunnel ID" -ForegroundColor Red
    exit 1
}

# Create config directory
$configDir = "$env:USERPROFILE\.cloudflared"
New-Item -ItemType Directory -Force -Path $configDir | Out-Null

# Read existing config or create new
$configPath = Join-Path $configDir "config.yml"
$existingConfig = @{}

if (Test-Path $configPath) {
    Write-Host "`nReading existing config.yml..." -ForegroundColor Yellow
    $configContent = Get-Content $configPath -Raw
    
    # Parse existing ingress rules (basic parsing)
    # For now, we'll append to existing config
    Write-Host "  Found existing config. Will add new ingress rule." -ForegroundColor Gray
} else {
    Write-Host "`nCreating new config.yml..." -ForegroundColor Yellow
}

# Create or update config
$credentialsFile = Join-Path $configDir "${tunnelId}.json"

# Build ingress rules
$ingressRules = @"
  - hostname: $fullHostname
    service: http://localhost:$Port
"@

# If config exists, append; otherwise create new
if (Test-Path $configPath) {
    # Read existing content
    $configLines = Get-Content $configPath
    
    # Check if this tunnel already exists in config
    $tunnelExists = $false
    $newConfig = @()
    $inIngress = $false
    
    foreach ($line in $configLines) {
        if ($line -match "^tunnel:\s*$tunnelId") {
            $tunnelExists = $true
        }
        if ($line -match "^ingress:") {
            $inIngress = $true
        }
        if ($inIngress -and $line -match "^\s*-\s*service:\s*http_status:404") {
            # Insert new rule before catch-all
            $newConfig += $ingressRules
            $inIngress = $false
        }
        $newConfig += $line
    }
    
    if (-not $tunnelExists) {
        # Add new tunnel config
        $newConfig = @(
            "tunnel: $tunnelId",
            "credentials-file: $credentialsFile",
            "",
            "ingress:",
            $ingressRules,
            "  - service: http_status:404"
        ) + $newConfig
    }
    
    Set-Content -Path $configPath -Value ($newConfig -join "`n")
} else {
    # Create new config
    $configContent = @"
tunnel: $tunnelId
credentials-file: $credentialsFile

ingress:
$ingressRules
  - service: http_status:404
"@
    Set-Content -Path $configPath -Value $configContent
}

Write-Host "✁EConfig file updated: $configPath" -ForegroundColor Green

# Instructions for DNS setup
Write-Host "`n========================================" -ForegroundColor Cyan
Write-Host "DNS Setup Required" -ForegroundColor Yellow
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "IMPORTANT: Domain must be managed by Cloudflare" -ForegroundColor Yellow
Write-Host ""
Write-Host "If $Domain is not yet in Cloudflare:" -ForegroundColor Cyan
Write-Host "1. Go to https://dash.cloudflare.com" -ForegroundColor White
Write-Host "2. Click 'Add a Site' and enter $Domain" -ForegroundColor White
Write-Host "3. Choose Free plan" -ForegroundColor White
Write-Host "4. Cloudflare will show you nameservers (e.g., alice.ns.cloudflare.com)" -ForegroundColor White
Write-Host "5. Go to GoDaddy.com ↁEDomain Settings ↁEDNS" -ForegroundColor White
Write-Host "6. Update nameservers to Cloudflare nameservers shown" -ForegroundColor White
Write-Host "   OR add the CNAME record directly in GoDaddy DNS zone file" -ForegroundColor White
Write-Host ""
Write-Host "If domain is already in Cloudflare:" -ForegroundColor Cyan
Write-Host "1. Go to Cloudflare Dashboard: https://dash.cloudflare.com" -ForegroundColor White
Write-Host "2. Select your domain: $Domain" -ForegroundColor White
Write-Host "3. Go to DNS ↁERecords ↁEAdd record" -ForegroundColor White
Write-Host ""
Write-Host "Create CNAME record:" -ForegroundColor Cyan
Write-Host "   Type: CNAME" -ForegroundColor White
Write-Host "   Name: $Subdomain" -ForegroundColor White
Write-Host "   Target: $tunnelId.cfargotunnel.com" -ForegroundColor White
Write-Host "   Proxy: Proxied (orange cloud) ✁E -ForegroundColor White
Write-Host "   TTL: Auto" -ForegroundColor White
Write-Host ""
Write-Host "Alternative: If using GoDaddy DNS (not recommended for Cloudflare Tunnel):" -ForegroundColor Yellow
Write-Host "   Add CNAME record in GoDaddy DNS zone file:" -ForegroundColor White
Write-Host "   Name: $Subdomain" -ForegroundColor White
Write-Host "   Value: $tunnelId.cfargotunnel.com" -ForegroundColor White
Write-Host "   TTL: 3600" -ForegroundColor White
Write-Host ""
Write-Host "Save the record and wait 1-2 minutes for DNS propagation" -ForegroundColor Cyan
Write-Host ""

# Create startup script for tunnel
$tunnelScriptContent = "# Start Cloudflare Tunnel for $CourseName`n"
$tunnelScriptContent += "# Run this script to start the tunnel`n`n"
$tunnelScriptContent += "Write-Host `"Starting Cloudflare Tunnel for $CourseName...`" -ForegroundColor Green`n"
$tunnelScriptContent += "Write-Host `"Hostname: $fullHostname`" -ForegroundColor Cyan`n"
$tunnelScriptContent += "Write-Host `"Backend: http://localhost:$Port`" -ForegroundColor Cyan`n"
$tunnelScriptContent += "Write-Host `"`"`n`n"
$tunnelScriptContent += "cloudflared tunnel run $tunnelName`n`n"
$tunnelScriptContent += "Write-Host `"`nTunnel stopped.`" -ForegroundColor Yellow`n"

$backendDir = Join-Path $projectRoot $CourseName
$backendDir = Join-Path $backendDir "backend"
$tunnelScriptPath = Join-Path $backendDir "start-tunnel.ps1"
Set-Content -Path $tunnelScriptPath -Value $tunnelScriptContent -Encoding UTF8
Write-Host "✁ECreated tunnel startup script: start-tunnel.ps1" -ForegroundColor Green

# Create service installation script (optional)
$serviceScriptContent = "# Install Cloudflare Tunnel as Windows Service`n"
$serviceScriptContent += "# Run PowerShell as Administrator`n`n"
$serviceScriptContent += "Write-Host `"Installing Cloudflare Tunnel as Windows Service...`" -ForegroundColor Green`n`n"
$serviceScriptContent += "cloudflared service install`n"
$serviceScriptContent += "cloudflared service start`n`n"
$serviceScriptContent += "Write-Host `"`n✁ETunnel service installed and started!`" -ForegroundColor Green`n"
$serviceScriptContent += "Write-Host `"The tunnel will run automatically on startup.`" -ForegroundColor Gray`n"

$serviceScriptPath = Join-Path $backendDir "install-tunnel-service.ps1"
Set-Content -Path $serviceScriptPath -Value $serviceScriptContent -Encoding UTF8
Write-Host "✁ECreated service installation script: install-tunnel-service.ps1" -ForegroundColor Green

Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "✁ECloudflare Tunnel Setup Complete!" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Next Steps:" -ForegroundColor Cyan
Write-Host "1. Set up DNS record in Cloudflare Dashboard" -ForegroundColor White
Write-Host "2. Wait for DNS propagation 1-2 minutes" -ForegroundColor White
Write-Host "3. Start tunnel using start-tunnel.ps1 in backend directory" -ForegroundColor White
Write-Host "4. Test HTTPS endpoint" -ForegroundColor White
Write-Host "5. Update frontend with Cloudflare URL" -ForegroundColor White
Write-Host ""

