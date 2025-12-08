# Setup Script for Additional Course Backend
# Usage: .\setup-course-backend.ps1 -CourseId "course2" -CourseName "Course 2 Name" -Port 8002 -GitHubPagesUrl "https://user.github.io/repo/"

param(
    [Parameter(Mandatory=$true)]
    [string]$CourseId,
    
    [Parameter(Mandatory=$true)]
    [string]$CourseName,
    
    [Parameter(Mandatory=$true)]
    [int]$Port,
    
    [Parameter(Mandatory=$true)]
    [string]$GitHubPagesUrl,
    
    [string]$SourceBackend = "..\2025ML\backend",
    [string]$OutputDirectory = "..\course-backend-$CourseId"
)

Write-Host "Setting up backend for course: $CourseName" -ForegroundColor Green
Write-Host "Course ID: $CourseId" -ForegroundColor Cyan
Write-Host "Port: $Port" -ForegroundColor Cyan
Write-Host "Output: $OutputDirectory" -ForegroundColor Cyan

# Check if source backend exists
if (-not (Test-Path $SourceBackend)) {
    Write-Host "Error: Source backend not found at $SourceBackend" -ForegroundColor Red
    exit 1
}

# Create output directory
Write-Host "`nCreating output directory..." -ForegroundColor Yellow
New-Item -ItemType Directory -Force -Path $OutputDirectory | Out-Null

# Copy necessary files
Write-Host "Copying backend files..." -ForegroundColor Yellow
$itemsToCopy = @(
    "app",
    "scripts",
    "requirements.txt"
)

foreach ($item in $itemsToCopy) {
    $sourcePath = Join-Path $SourceBackend $item
    $destPath = Join-Path $OutputDirectory $item
    
    if (Test-Path $sourcePath) {
        Copy-Item -Path $sourcePath -Destination $destPath -Recurse -Force
        Write-Host "  ✓ Copied $item" -ForegroundColor Green
    } else {
        Write-Host "  ⚠ Warning: $item not found in source" -ForegroundColor Yellow
    }
}

# Create directories (Course-Specific - Each course has isolated directories)
Write-Host "`nCreating isolated directories..." -ForegroundColor Yellow
Write-Host "  Note: Each course has its own separate database and knowledge base" -ForegroundColor Gray
$directories = @(
    "knowledge_base",  # Course-specific knowledge base (isolated)
    "chroma_db",       # Course-specific database (isolated)
    "logs"             # Course-specific logs
)

foreach ($dir in $directories) {
    $dirPath = Join-Path $OutputDirectory $dir
    New-Item -ItemType Directory -Force -Path $dirPath | Out-Null
    Write-Host "  ✓ Created $dir (course-specific, isolated)" -ForegroundColor Green
}

# Create .env file
Write-Host "`nCreating .env file..." -ForegroundColor Yellow
$envContent = @"
# Course Configuration
COURSE_ID=$CourseId
COURSE_NAME=$CourseName

# Server Configuration
BACKEND_PORT=$Port

# GitHub Configuration
GITHUB_PAGES_URL=$GitHubPagesUrl

# Ollama Configuration (shared model - efficient GPU usage)
# Note: Model is shared, but each course has its own isolated database
OLLAMA_BASE_URL=http://localhost:11434
OLLAMA_MODEL=llama3.2:latest
OLLAMA_EMBEDDING_MODEL=nomic-embed-text

# Database Configuration (shared)
DATABASE_URL=postgresql://ml101bot:ml101bot_password@localhost:5432/ml101bot
REDIS_URL=redis://localhost:6379

# RAG Configuration (Course-Specific - Complete Isolation)
# Each course has its OWN database and knowledge base
# Database collection name: course_knowledge_{COURSE_ID}
CHROMA_DB_PATH=./chroma_db
KNOWLEDGE_BASE_PATH=./knowledge_base

# Email Configuration (for OTP authentication)
SMTP_SERVER=smtp.gmail.com
SMTP_PORT=587
SMTP_USERNAME=
SMTP_PASSWORD=
FROM_EMAIL=

# Security (CHANGE THESE!)
SECRET_KEY=CHANGE_THIS_TO_RANDOM_STRING_32_CHARS_MIN
JWT_SECRET=CHANGE_THIS_TO_RANDOM_STRING_32_CHARS_MIN

# Logging
LOG_LEVEL=INFO
LOG_FILE=./logs/app.log
"@

$envPath = Join-Path $OutputDirectory ".env"
$envContent | Out-File -FilePath $envPath -Encoding UTF8
Write-Host "  ✓ Created .env file" -ForegroundColor Green

# Create virtual environment
Write-Host "`nCreating virtual environment..." -ForegroundColor Yellow
Set-Location $OutputDirectory
python -m venv venv
Write-Host "  ✓ Created virtual environment" -ForegroundColor Green

# Install dependencies
Write-Host "`nInstalling dependencies..." -ForegroundColor Yellow
& .\venv\Scripts\Activate.ps1
pip install -r requirements.txt
Write-Host "  ✓ Installed dependencies" -ForegroundColor Green

# Create startup script
Write-Host "`nCreating startup script..." -ForegroundColor Yellow
$startupScript = @"
# Start backend for $CourseName
cd `$PSScriptRoot
.\venv\Scripts\Activate.ps1
python -m uvicorn app.main:app --host 0.0.0.0 --port $Port --reload
"@

$startupPath = Join-Path $OutputDirectory "start-backend.ps1"
$startupScript | Out-File -FilePath $startupPath -Encoding UTF8
Write-Host "  ✓ Created start-backend.ps1" -ForegroundColor Green

# Create .gitignore
Write-Host "`nCreating .gitignore..." -ForegroundColor Yellow
$gitignoreContent = @"
venv/
__pycache__/
*.pyc
*.pyo
*.pyd
.Python
*.log
.env
chroma_db/
knowledge_base/
*.db
*.sqlite
certificates/
"@

$gitignorePath = Join-Path $OutputDirectory ".gitignore"
$gitignoreContent | Out-File -FilePath $gitignorePath -Encoding UTF8
Write-Host "  ✓ Created .gitignore" -ForegroundColor Green

Write-Host "`n✅ Backend setup complete!" -ForegroundColor Green
Write-Host "`nNext steps:" -ForegroundColor Cyan
Write-Host "1. Copy your course materials to: $OutputDirectory\knowledge_base" -ForegroundColor White
Write-Host "2. Load knowledge base: cd $OutputDirectory; .\venv\Scripts\Activate.ps1; python scripts\load_knowledge_base.py" -ForegroundColor White
Write-Host "3. Start backend: cd $OutputDirectory; .\start-backend.ps1" -ForegroundColor White
Write-Host "4. Update firewall: New-NetFirewallRule -DisplayName `"$CourseName Bot Port $Port`" -Direction Inbound -LocalPort $Port -Protocol TCP -Action Allow" -ForegroundColor White

Set-Location $PSScriptRoot

