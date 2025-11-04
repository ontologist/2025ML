# ML-101 Course Bot Installation Script for Windows 11
# Multi-Course Support (3 courses)
# Requires: Administrator privileges, RTX 4090 GPU, Fixed IP address

param(
    [string]$CourseId = "ml101",
    [int]$BackendPort = 8001,
    [int]$FrontendPort = 3001,
    [string]$ModelName = "qwen2.5:72b",
    [string]$FixedIP = "",
    [string]$GitHubRepo = "https://github.com/ontologist/2025ML.git",
    [string]$GitHubPagesURL = "https://ontologist.github.io/2025ML/",
    [switch]$DownloadFromGitHub = $true,
    [switch]$DownloadGitHubPages = $true
)

# Script Configuration
$ErrorActionPreference = "Stop"
$ProgressPreference = "Continue"

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "ML-101 Course Bot Installation Script" -ForegroundColor Cyan
Write-Host "Windows 11 + RTX 4090 Setup" -ForegroundColor Cyan
Write-Host "Multi-Course Support" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Check Administrator privileges
$isAdmin = ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)
if (-not $isAdmin) {
    Write-Host "ERROR: This script requires Administrator privileges!" -ForegroundColor Red
    Write-Host "Please run PowerShell as Administrator and try again." -ForegroundColor Yellow
    exit 1
}

# Check if NVIDIA GPU is detected
Write-Host "Step 1: Checking NVIDIA GPU..." -ForegroundColor Green
try {
    $gpu = nvidia-smi --query-gpu=name --format=csv,noheader 2>$null
    if ($gpu -match "4090") {
        Write-Host "✓ RTX 4090 detected: $gpu" -ForegroundColor Green
    } else {
        Write-Host "⚠ GPU detected: $gpu (Expected RTX 4090)" -ForegroundColor Yellow
    }
} catch {
    Write-Host "⚠ WARNING: nvidia-smi not found. Please install NVIDIA drivers." -ForegroundColor Yellow
    Write-Host "  Download from: https://www.nvidia.com/Download/index.aspx" -ForegroundColor Yellow
}

# Get installation directory
$installDir = Read-Host "Enter installation directory (default: C:\course-bots)"
if ([string]::IsNullOrWhiteSpace($installDir)) {
    $installDir = "C:\course-bots"
}

# Create directory structure
Write-Host "`nStep 2: Creating directory structure..." -ForegroundColor Green
$courseDir = "$installDir\course-$CourseId"
$sharedDir = "$installDir\shared"

New-Item -ItemType Directory -Force -Path $installDir | Out-Null
New-Item -ItemType Directory -Force -Path $courseDir | Out-Null
New-Item -ItemType Directory -Force -Path "$courseDir\backend" | Out-Null
New-Item -ItemType Directory -Force -Path "$courseDir\frontend" | Out-Null
New-Item -ItemType Directory -Force -Path "$courseDir\backend\knowledge_base" | Out-Null
New-Item -ItemType Directory -Force -Path $sharedDir | Out-Null

Write-Host "✓ Directory structure created" -ForegroundColor Green

# Install Ollama
Write-Host "`nStep 3: Installing Ollama..." -ForegroundColor Green
$ollamaPath = Get-Command ollama -ErrorAction SilentlyContinue
if ($null -eq $ollamaPath) {
    Write-Host "Downloading Ollama installer..." -ForegroundColor Yellow
    $ollamaInstaller = "$env:TEMP\OllamaSetup.exe"
    
    try {
        Invoke-WebRequest -Uri "https://ollama.com/download/windows" -OutFile $ollamaInstaller -UseBasicParsing
        Write-Host "Running Ollama installer..." -ForegroundColor Yellow
        Start-Process -FilePath $ollamaInstaller -ArgumentList "/S" -Wait -NoNewWindow
        Start-Sleep -Seconds 5
        
        # Add Ollama to PATH if not already there
        $ollamaPath = "$env:LOCALAPPDATA\Programs\Ollama"
        if (Test-Path "$ollamaPath\ollama.exe") {
            $env:Path += ";$ollamaPath"
            [Environment]::SetEnvironmentVariable("Path", $env:Path, [EnvironmentVariableTarget]::Machine)
        }
        
        Remove-Item $ollamaInstaller -ErrorAction SilentlyContinue
        Write-Host "✓ Ollama installed successfully" -ForegroundColor Green
    } catch {
        Write-Host "✗ Failed to install Ollama: $_" -ForegroundColor Red
        Write-Host "Please download manually from: https://ollama.com/download/windows" -ForegroundColor Yellow
    }
} else {
    Write-Host "✓ Ollama already installed" -ForegroundColor Green
}

# Verify Ollama
Write-Host "`nStep 4: Verifying Ollama installation..." -ForegroundColor Green
try {
    $ollamaVersion = ollama --version 2>&1
    Write-Host "✓ Ollama version: $ollamaVersion" -ForegroundColor Green
} catch {
    Write-Host "✗ Ollama not found in PATH" -ForegroundColor Red
    exit 1
}

# Start Ollama service
Write-Host "`nStep 5: Starting Ollama service..." -ForegroundColor Green
$ollamaProcess = Get-Process -Name "ollama" -ErrorAction SilentlyContinue
if ($null -eq $ollamaProcess) {
    Write-Host "Starting Ollama..." -ForegroundColor Yellow
    Start-Process -FilePath "ollama" -ArgumentList "serve" -WindowStyle Hidden
    Start-Sleep -Seconds 5
    Write-Host "✓ Ollama service started" -ForegroundColor Green
} else {
    Write-Host "✓ Ollama service already running" -ForegroundColor Green
}

# Pull model
Write-Host "`nStep 6: Downloading model ($ModelName)..." -ForegroundColor Green
Write-Host "This may take 10-30 minutes depending on internet speed..." -ForegroundColor Yellow
Write-Host "Model size: ~42GB for qwen2.5:72b" -ForegroundColor Yellow

try {
    ollama pull $ModelName
    Write-Host "✓ Model downloaded successfully" -ForegroundColor Green
} catch {
    Write-Host "✗ Failed to download model: $_" -ForegroundColor Red
    Write-Host "You can download it manually later with: ollama pull $ModelName" -ForegroundColor Yellow
}

# Test model
Write-Host "`nStep 7: Testing model..." -ForegroundColor Green
try {
    $testResponse = ollama run $ModelName "Hello in Japanese" --no-history 2>&1
    Write-Host "✓ Model test successful" -ForegroundColor Green
} catch {
    Write-Host "⚠ Model test failed, but installation may still work" -ForegroundColor Yellow
}

# Install Python
Write-Host "`nStep 8: Checking Python installation..." -ForegroundColor Green
$pythonPath = Get-Command python -ErrorAction SilentlyContinue
if ($null -eq $pythonPath) {
    Write-Host "Python not found. Please install Python 3.13.7 or later." -ForegroundColor Yellow
    Write-Host "Download from: https://www.python.org/downloads/" -ForegroundColor Yellow
    Write-Host "Make sure to check 'Add Python to PATH' during installation." -ForegroundColor Yellow
    $continue = Read-Host "Continue anyway? (y/n)"
    if ($continue -ne "y") {
        exit 1
    }
} else {
    $pythonVersion = python --version
    Write-Host "✓ $pythonVersion found" -ForegroundColor Green
}

# Create Python virtual environment
Write-Host "`nStep 9: Creating Python virtual environment..." -ForegroundColor Green
$venvPath = "$courseDir\backend\venv"
if (-not (Test-Path $venvPath)) {
    python -m venv $venvPath
    Write-Host "✓ Virtual environment created" -ForegroundColor Green
} else {
    Write-Host "✓ Virtual environment already exists" -ForegroundColor Green
}

# Install Python dependencies
Write-Host "`nStep 10: Installing Python dependencies..." -ForegroundColor Green
$requirementsFile = "$courseDir\backend\requirements.txt"

# Create requirements.txt if it doesn't exist
if (-not (Test-Path $requirementsFile)) {
    @"
fastapi==0.109.0
uvicorn[standard]==0.27.0
langchain==0.1.0
langchain-community==0.0.10
chromadb==0.4.18
ollama==0.1.7
psycopg2-binary==2.9.9
redis==5.0.1
pydantic==2.5.3
python-dotenv==1.0.0
httpx==0.26.0
"@ | Out-File -FilePath $requirementsFile -Encoding UTF8
}

& "$venvPath\Scripts\activate"
python -m pip install --upgrade pip
pip install -r $requirementsFile
Write-Host "✓ Python dependencies installed" -ForegroundColor Green

# Install Node.js (for frontend)
Write-Host "`nStep 11: Checking Node.js installation..." -ForegroundColor Green
$nodePath = Get-Command node -ErrorAction SilentlyContinue
if ($null -eq $nodePath) {
    Write-Host "Node.js not found. Please install Node.js 20.x or later." -ForegroundColor Yellow
    Write-Host "Download from: https://nodejs.org/" -ForegroundColor Yellow
    Write-Host "Frontend setup will be skipped." -ForegroundColor Yellow
} else {
    $nodeVersion = node --version
    Write-Host "✓ Node.js $nodeVersion found" -ForegroundColor Green
}

# Install Docker Desktop (for PostgreSQL)
Write-Host "`nStep 12: Checking Docker Desktop..." -ForegroundColor Green
$dockerPath = Get-Command docker -ErrorAction SilentlyContinue
if ($null -eq $dockerPath) {
    Write-Host "Docker Desktop not found. PostgreSQL will need to be installed separately." -ForegroundColor Yellow
    Write-Host "Download Docker Desktop from: https://www.docker.com/products/docker-desktop/" -ForegroundColor Yellow
    Write-Host "Or install PostgreSQL manually from: https://www.postgresql.org/download/windows/" -ForegroundColor Yellow
} else {
    $dockerVersion = docker --version
    Write-Host "✓ Docker $dockerVersion found" -ForegroundColor Green
}

# Download course content from GitHub
Write-Host "`nStep 13: Downloading course content..." -ForegroundColor Green

$gitPath = Get-Command git -ErrorAction SilentlyContinue
if ($null -ne $gitPath -and $DownloadFromGitHub) {
    Write-Host "Cloning repository: $GitHubRepo" -ForegroundColor Yellow
    $repoDir = "$courseDir\course-repo"
    
    if (-not (Test-Path $repoDir)) {
        try {
            git clone $GitHubRepo $repoDir
            Write-Host "✓ Repository cloned successfully" -ForegroundColor Green
            
            # Copy course documents to knowledge base
            Write-Host "Copying course documents to knowledge base..." -ForegroundColor Yellow
            
            $sourcePaths = @(
                "$repoDir\curriculum",
                "$repoDir\activities\week-plans",
                "$repoDir\lectures",
                "$repoDir\bot-config\activity-guides",
                "$repoDir\assessments"
            )
            
            foreach ($sourcePath in $sourcePaths) {
                if (Test-Path $sourcePath) {
                    $destPath = "$courseDir\backend\knowledge_base\$(Split-Path $sourcePath -Leaf)"
                    Copy-Item -Path $sourcePath -Destination $destPath -Recurse -Force -ErrorAction SilentlyContinue
                    Write-Host "  ✓ Copied: $(Split-Path $sourcePath -Leaf)" -ForegroundColor Gray
                }
            }
            
            # Copy docs folder (GitHub Pages source)
            if (Test-Path "$repoDir\docs") {
                Copy-Item -Path "$repoDir\docs" -Destination "$courseDir\backend\knowledge_base\docs" -Recurse -Force
                Write-Host "  ✓ Copied: docs (GitHub Pages content)" -ForegroundColor Gray
            }
            
            Write-Host "✓ Course documents copied to knowledge base" -ForegroundColor Green
        } catch {
            Write-Host "⚠ Failed to clone repository: $_" -ForegroundColor Yellow
            Write-Host "  You can manually copy course documents later to: $courseDir\backend\knowledge_base" -ForegroundColor Yellow
        }
    } else {
        Write-Host "✓ Repository already exists, updating..." -ForegroundColor Yellow
        try {
            Push-Location $repoDir
            git pull
            Pop-Location
            Write-Host "✓ Repository updated" -ForegroundColor Green
        } catch {
            Write-Host "⚠ Could not update repository" -ForegroundColor Yellow
        }
    }
} else {
    if ($null -eq $gitPath) {
        Write-Host "⚠ Git not found. Skipping repository clone." -ForegroundColor Yellow
        Write-Host "  Install Git from: https://git-scm.com/download/win" -ForegroundColor Yellow
        Write-Host "  Or manually copy course documents to: $courseDir\backend\knowledge_base" -ForegroundColor Yellow
    }
}

# Download GitHub Pages content
if ($DownloadGitHubPages -and -not [string]::IsNullOrWhiteSpace($GitHubPagesURL)) {
    Write-Host "`nStep 13b: Downloading GitHub Pages content..." -ForegroundColor Green
    $pagesDir = "$courseDir\backend\knowledge_base\github-pages"
    New-Item -ItemType Directory -Force -Path $pagesDir | Out-Null
    
    try {
        # Download main pages
        $pagesToDownload = @(
            "/index.html",
            "/index.md",
            "/weeks-1-5.md",
            "/resources.md"
        )
        
        foreach ($page in $pagesToDownload) {
            try {
                $url = $GitHubPagesURL.TrimEnd('/') + $page
                $fileName = $page.TrimStart('/')
                if ($fileName -eq "") { $fileName = "index.html" }
                
                $outputFile = "$pagesDir\$fileName"
                Invoke-WebRequest -Uri $url -OutFile $outputFile -UseBasicParsing -ErrorAction SilentlyContinue
                Write-Host "  ✓ Downloaded: $fileName" -ForegroundColor Gray
            } catch {
                Write-Host "  ⚠ Could not download: $page" -ForegroundColor Yellow
            }
        }
        
        # Download weekly pages
        for ($i = 1; $i -le 14; $i++) {
            $weekNum = $i.ToString("00")
            $url = $GitHubPagesURL.TrimEnd('/') + "/weeks/week-$weekNum/lecture.html"
            $outputFile = "$pagesDir\week-$weekNum-lecture.html"
            try {
                Invoke-WebRequest -Uri $url -OutFile $outputFile -UseBasicParsing -ErrorAction SilentlyContinue
                Write-Host "  ✓ Downloaded: week-$weekNum-lecture.html" -ForegroundColor Gray
            } catch {
                # Page might not exist yet, that's okay
            }
        }
        
        Write-Host "✓ GitHub Pages content downloaded" -ForegroundColor Green
    } catch {
        Write-Host "⚠ Could not download GitHub Pages content: $_" -ForegroundColor Yellow
        Write-Host "  You can manually download from: $GitHubPagesURL" -ForegroundColor Yellow
    }
}

# Create environment file
Write-Host "`nStep 14: Creating environment configuration..." -ForegroundColor Green
$envFile = "$courseDir\backend\.env"

if (-not (Test-Path $envFile)) {
    if ([string]::IsNullOrWhiteSpace($FixedIP)) {
        $FixedIP = Read-Host "Enter your fixed IP address"
    }
    
    @"
# Course Bot Configuration
COURSE_ID=$CourseId
COURSE_NAME=ML-101 Machine Learning and Intelligence

# Server Configuration
BACKEND_PORT=$BackendPort
FRONTEND_PORT=$FrontendPort
FIXED_IP=$FixedIP

# GitHub Configuration
GITHUB_REPO_URL=$GitHubRepo
GITHUB_PAGES_URL=$GitHubPagesURL

# Ollama Configuration
OLLAMA_BASE_URL=http://localhost:11434
OLLAMA_MODEL=$ModelName
OLLAMA_EMBEDDING_MODEL=nomic-embed-text

# Database Configuration
DATABASE_URL=postgresql://ml101bot:ml101bot@localhost:5432/ml101bot
REDIS_URL=redis://localhost:6379

# RAG Configuration
CHROMA_DB_PATH=$courseDir\backend\chroma_db
KNOWLEDGE_BASE_PATH=$courseDir\backend\knowledge_base

# Security
SECRET_KEY=CHANGE_THIS_TO_RANDOM_STRING
JWT_SECRET=CHANGE_THIS_TO_RANDOM_STRING

# Logging
LOG_LEVEL=INFO
LOG_FILE=$courseDir\backend\logs\app.log
"@ | Out-File -FilePath $envFile -Encoding UTF8
    
    Write-Host "✓ Environment file created at: $envFile" -ForegroundColor Green
    Write-Host "⚠ Please edit .env file and change SECRET_KEY and JWT_SECRET!" -ForegroundColor Yellow
}

# Configure Windows Firewall
Write-Host "`nStep 15: Configuring Windows Firewall..." -ForegroundColor Green
try {
    New-NetFirewallRule -DisplayName "Course Bot Backend $CourseId" -Direction Inbound -LocalPort $BackendPort -Protocol TCP -Action Allow -ErrorAction SilentlyContinue | Out-Null
    New-NetFirewallRule -DisplayName "Course Bot Frontend $CourseId" -Direction Inbound -LocalPort $FrontendPort -Protocol TCP -Action Allow -ErrorAction SilentlyContinue | Out-Null
    Write-Host "✓ Firewall rules added for ports $BackendPort and $FrontendPort" -ForegroundColor Green
} catch {
    Write-Host "⚠ Could not configure firewall automatically" -ForegroundColor Yellow
    Write-Host "  Please manually allow ports $BackendPort and $FrontendPort in Windows Firewall" -ForegroundColor Yellow
}

# Create startup script
Write-Host "`nStep 16: Creating startup scripts..." -ForegroundColor Green
$startScript = "$courseDir\start-backend.ps1"
@"
# Start Backend Server
Set-Location "$courseDir\backend"
& "$venvPath\Scripts\activate"
\$env:PORT = $BackendPort
uvicorn app.main:app --host 0.0.0.0 --port $BackendPort
"@ | Out-File -FilePath $startScript -Encoding UTF8

Write-Host "✓ Startup script created: $startScript" -ForegroundColor Green

# Summary
Write-Host "`n========================================" -ForegroundColor Cyan
Write-Host "Installation Complete!" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Course ID: $CourseId" -ForegroundColor Yellow
Write-Host "Backend Port: $BackendPort" -ForegroundColor Yellow
Write-Host "Frontend Port: $FrontendPort" -ForegroundColor Yellow
Write-Host "Model: $ModelName" -ForegroundColor Yellow
Write-Host ""
Write-Host "Next Steps:" -ForegroundColor Cyan
Write-Host "1. Edit $envFile and set SECRET_KEY and JWT_SECRET" -ForegroundColor White
if (-not $DownloadFromGitHub) {
    Write-Host "2. Copy course documents to: $courseDir\backend\knowledge_base" -ForegroundColor White
    Write-Host "   Or run: git clone $GitHubRepo $courseDir\course-repo" -ForegroundColor Gray
}
Write-Host "$([Math]::Max(2, 2 + [int]$DownloadFromGitHub)). Set up PostgreSQL database (see docker-compose.yml)" -ForegroundColor White
Write-Host "$([Math]::Max(3, 3 + [int]$DownloadFromGitHub)). Load knowledge base: python scripts/load_knowledge_base.py" -ForegroundColor White
Write-Host "$([Math]::Max(4, 4 + [int]$DownloadFromGitHub)). Start backend: .\start-backend.ps1" -ForegroundColor White
Write-Host ""
Write-Host "Access URL:" -ForegroundColor Cyan
Write-Host "  http://$FixedIP`:$BackendPort" -ForegroundColor Green
Write-Host ""
Write-Host "For additional courses, run this script again with different:" -ForegroundColor Yellow
Write-Host "  -CourseId, -BackendPort, -FrontendPort parameters" -ForegroundColor Yellow
Write-Host ""

