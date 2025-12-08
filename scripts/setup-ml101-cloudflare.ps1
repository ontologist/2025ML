# Quick Cloudflare Tunnel Setup for ML-101
# Bypasses the parsing error in the main script

param(
    [string]$Domain = "wittyhead.com",
    [string]$Subdomain = "ml101bot",
    [int]$Port = 8001
)

$tunnelName = "ml101-bot"
$fullHostname = "${Subdomain}.${Domain}"

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Cloudflare Tunnel Setup for ML-101" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Configuration:" -ForegroundColor Cyan
Write-Host "  Subdomain: $Subdomain" -ForegroundColor White
Write-Host "  Domain: $Domain" -ForegroundColor White
Write-Host "  Full Hostname: $fullHostname" -ForegroundColor White
Write-Host "  Port: $Port" -ForegroundColor White
Write-Host "  Tunnel Name: $tunnelName" -ForegroundColor White
Write-Host ""

# Check if cloudflared is available
$cloudflared = Get-Command cloudflared -ErrorAction SilentlyContinue
if (-not $cloudflared) {
    # Try to find cloudflared in common locations
    $cloudflaredPaths = @(
        "$env:LOCALAPPDATA\Microsoft\WinGet\Packages\Cloudflare.cloudflared_Microsoft.Winget.Source_*\cloudflared.exe",
        "C:\Program Files\Cloudflare\cloudflared.exe",
        "$env:ProgramFiles\Cloudflare\cloudflared.exe"
    )
    
    $found = $false
    foreach ($path in $cloudflaredPaths) {
        $resolved = Resolve-Path $path -ErrorAction SilentlyContinue
        if ($resolved) {
            $env:Path += ";$(Split-Path $resolved -Parent)"
            $cloudflared = Get-Command cloudflared -ErrorAction SilentlyContinue
            if ($cloudflared) {
                $found = $true
                break
            }
        }
    }
    
    if (-not $found) {
        Write-Host "ERROR: cloudflared not found" -ForegroundColor Red
        Write-Host "Please install cloudflared first:" -ForegroundColor Yellow
        Write-Host "  winget install --id Cloudflare.cloudflared" -ForegroundColor White
        Write-Host ""
        Write-Host "Or if already installed, add it to PATH" -ForegroundColor Yellow
        exit 1
    }
}

# Create tunnel
Write-Host "Creating tunnel: $tunnelName..." -ForegroundColor Yellow
$tunnelCreate = cloudflared tunnel create $tunnelName 2>&1
$tunnelId = $null

if ($tunnelCreate -match 'Created tunnel ([a-f0-9-]+)') {
    $tunnelId = $matches[1]
    Write-Host "Tunnel created: $tunnelId" -ForegroundColor Green
} elseif ($tunnelCreate -match 'already exists') {
    Write-Host "Tunnel already exists. Getting tunnel info..." -ForegroundColor Yellow
    $tunnelList = cloudflared tunnel list
    $tunnelLine = ($tunnelList | Select-String $tunnelName).ToString()
    if ($tunnelLine -match '([a-f0-9-]+)') {
        $tunnelId = $matches[1]
        Write-Host "Using existing tunnel: $tunnelId" -ForegroundColor Green
    }
} else {
    Write-Host "Failed to create tunnel. Error:" -ForegroundColor Red
    Write-Host $tunnelCreate -ForegroundColor Red
    exit 1
}

if (-not $tunnelId) {
    Write-Host "Could not get tunnel ID" -ForegroundColor Red
    exit 1
}

# Update config file
$configPath = "$env:USERPROFILE\.cloudflared\config.yml"
$credentialsFile = "$env:USERPROFILE\.cloudflared\${tunnelId}.json"

Write-Host ""
Write-Host "Updating config.yml..." -ForegroundColor Yellow

# Read existing config
if (Test-Path $configPath) {
    $configContent = Get-Content $configPath -Raw
    
    # Check if ML-101 tunnel already configured
    if ($configContent -match "ml101-bot" -or $configContent -match "ml101bot\.wittyhead\.com") {
        Write-Host "ML-101 tunnel already in config" -ForegroundColor Yellow
    } else {
        # Add ML-101 ingress rule
        $newIngress = "  - hostname: $fullHostname`n    service: http://localhost:$Port`n"
        
        # Insert before catch-all
        $configContent = $configContent -replace '(\s+-\s+service:\s+http_status:404)', "$newIngress`$1"
        
        Set-Content -Path $configPath -Value $configContent -NoNewline
        Write-Host "Added ML-101 ingress rule to config" -ForegroundColor Green
    }
} else {
    # Create new config
    $newConfig = @"
tunnel: $tunnelId
credentials-file: $credentialsFile

ingress:
  - hostname: $fullHostname
    service: http://localhost:$Port
  - service: http_status:404
"@
    Set-Content -Path $configPath -Value $newConfig
    Write-Host "Created new config.yml" -ForegroundColor Green
}

Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Cloudflare Tunnel Setup Complete!" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Next Steps:" -ForegroundColor Cyan
Write-Host "1. Set up DNS in Cloudflare Dashboard:" -ForegroundColor White
Write-Host "   - Type: CNAME" -ForegroundColor Gray
Write-Host "   - Name: $Subdomain" -ForegroundColor Gray
Write-Host "   - Target: $tunnelId.cfargotunnel.com" -ForegroundColor Gray
Write-Host "   - Proxy: Proxied (orange cloud)" -ForegroundColor Gray
Write-Host ""
Write-Host "2. Wait 1-2 minutes for DNS propagation" -ForegroundColor White
Write-Host ""
Write-Host "3. Start tunnel:" -ForegroundColor White
Write-Host "   cloudflared tunnel run $tunnelName" -ForegroundColor Gray
Write-Host ""
Write-Host "4. Test: https://$fullHostname/health" -ForegroundColor White
Write-Host ""
Write-Host "5. Update frontend:" -ForegroundColor White
Write-Host "   localStorage.setItem('bot_cloudflare_url', 'https://$fullHostname')" -ForegroundColor Gray
Write-Host ""

