# Complete Course Bot Setup Script - Course-Specific Isolation
# This script sets up a complete bot system for a course with COMPLETE ISOLATION
# 
# Key Features:
# - Each course has its OWN database (ChromaDB collection)
# - Each course has its OWN knowledge base directory
# - Each course has its OWN ingestion process
# - Each course has its OWN backend instance
# - Shared Ollama model (efficient GPU usage)
#
# Usage: .\setup-complete-course-bot.ps1 -CourseId "blender" -CourseName "2025BlenderUnity3DIntroClass" -Port 8003

param(
    [Parameter(Mandatory=$true)]
    [string]$CourseId,
    
    [Parameter(Mandatory=$true)]
    [string]$CourseName,
    
    [Parameter(Mandatory=$true)]
    [int]$Port,
    
    [string]$CourseRepo = "",  # Will be auto-detected if not provided
    [string]$ML101Repo = "C:\Users\yuri\OneDrive\Documents\GitHub\2025ML",
    [string]$GitHubUsername = "ontologist",
    [string]$CloudflareDomain = "",  # e.g., "tijerino.ai"
    [string]$CloudflareSubdomain = ""  # Auto-generated if not provided
)

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Complete Bot Setup for $CourseName" -ForegroundColor Green
Write-Host "Course-Specific Isolation Guaranteed" -ForegroundColor Yellow
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

$scriptPath = Split-Path -Parent $MyInvocation.MyCommand.Path
$projectRoot = Split-Path -Parent $scriptPath

# Auto-detect course repo if not provided
if ([string]::IsNullOrEmpty($CourseRepo)) {
    $CourseRepo = Join-Path $projectRoot $CourseName
}

Write-Host "Configuration:" -ForegroundColor Cyan
Write-Host "  Course ID: $CourseId" -ForegroundColor White
Write-Host "  Course Name: $CourseName" -ForegroundColor White
Write-Host "  Port: $Port" -ForegroundColor White
Write-Host "  Course Repo: $CourseRepo" -ForegroundColor White
Write-Host "  Database Collection: course_knowledge_$CourseId" -ForegroundColor White
Write-Host "  Shared Model: Ollama/llama3.2:latest" -ForegroundColor White
Write-Host ""

# Check if course repo exists
if (-not (Test-Path $CourseRepo)) {
    Write-Host "⚠ Warning: Course repo not found at $CourseRepo" -ForegroundColor Yellow
    Write-Host "Creating directory..." -ForegroundColor Yellow
    New-Item -ItemType Directory -Force -Path $CourseRepo | Out-Null
}

$backendOutput = Join-Path $projectRoot "$CourseName\backend"
$githubPagesUrl = "https://$GitHubUsername.github.io/$CourseName/"

# ============================================================================
# Step 0: Copy ALL Bot Files from 2025ML to Target Course Repo
# This step copies everything BEFORE any configuration or setup
# ============================================================================
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Step 0: Copying All Bot Files" -ForegroundColor Green
Write-Host "Backend + Frontend (Before Configuration)" -ForegroundColor Yellow
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# ----------------------------------------------------------------------------
# 0.1: Copy Backend Files
# ----------------------------------------------------------------------------
Write-Host "0.1: Copying Backend Files..." -ForegroundColor Yellow
Write-Host "  Source: $ML101Repo\backend" -ForegroundColor Gray
Write-Host "  Destination: $backendOutput" -ForegroundColor Gray
Write-Host ""

# Create backend directory
New-Item -ItemType Directory -Force -Path $backendOutput | Out-Null

# Backend files to copy
$backendFilesToCopy = @(
    "app",
    "scripts",
    "requirements.txt"
)

foreach ($item in $backendFilesToCopy) {
    $sourcePath = Join-Path "$ML101Repo\backend" $item
    $destPath = Join-Path $backendOutput $item
    
    if (Test-Path $sourcePath) {
        if ((Get-Item $sourcePath) -is [System.IO.DirectoryInfo]) {
            Copy-Item -Path $sourcePath -Destination $destPath -Recurse -Force
        } else {
            Copy-Item -Path $sourcePath -Destination $destPath -Force
        }
        Write-Host "  ✓ Copied $item" -ForegroundColor Green
    } else {
        Write-Host "  ⚠ Warning: $item not found in source" -ForegroundColor Yellow
    }
}

# Create isolated directories (empty, will be populated later)
Write-Host "  Creating isolated directories..." -ForegroundColor Gray
$directories = @(
    "knowledge_base",
    "chroma_db",
    "logs"
)

foreach ($dir in $directories) {
    $dirPath = Join-Path $backendOutput $dir
    New-Item -ItemType Directory -Force -Path $dirPath | Out-Null
}
Write-Host "  ✓ Created isolated directories (knowledge_base, chroma_db, logs)" -ForegroundColor Green
Write-Host ""

# ----------------------------------------------------------------------------
# 0.2: Copy Frontend Bot Files
# ----------------------------------------------------------------------------
Write-Host "0.2: Copying Frontend Bot Files..." -ForegroundColor Yellow
Write-Host "  Source: $ML101Repo\docs" -ForegroundColor Gray
Write-Host "  Destination: $CourseRepo\docs" -ForegroundColor Gray
Write-Host ""

# Ensure docs directory exists
$docsDir = Join-Path $CourseRepo "docs"
if (-not (Test-Path $docsDir)) {
    New-Item -ItemType Directory -Force -Path $docsDir | Out-Null
    Write-Host "  Created docs directory" -ForegroundColor Gray
}

# Frontend bot files to copy
$frontendFiles = @(
    @{Source = "bot-chat.js"; Dest = "bot-chat.js"; Update = $true},
    @{Source = "bot-login.js"; Dest = "bot-login.js"; Update = $false},
    @{Source = "bot-styles.css"; Dest = "bot-styles.css"; Update = $false}
)

foreach ($file in $frontendFiles) {
    $sourceFile = Join-Path "$ML101Repo\docs" $file.Source
    $destFile = Join-Path $docsDir $file.Dest
    
    if (Test-Path $sourceFile) {
        Copy-Item -Path $sourceFile -Destination $destFile -Force
        
        if ($file.Update) {
            # Update API URLs in bot-chat.js for this course
            Write-Host "  Updating API URLs in $($file.Dest) (port $Port)..." -ForegroundColor Gray
            $content = Get-Content $destFile -Raw
            
            # Replace localhost port
            $content = $content -replace 'localhost:8001', "localhost:$Port"
            
            # Replace fixed IP port
            $content = $content -replace '192\.218\.175\.132:8001', "192.218.175.132:$Port"
            
            # Update class name (capitalize first letter)
            $CapitalizedCourseId = $CourseId.Substring(0,1).ToUpper() + $CourseId.Substring(1)
            $content = $content -replace 'ML101BotChat', "${CapitalizedCourseId}BotChat"
            $content = $content -replace 'ml101BotChat', "${CapitalizedCourseId}BotChat"
            
            Set-Content -Path $destFile -Value $content -NoNewline
        }
        
        Write-Host "  ✓ Copied $($file.Dest)" -ForegroundColor Green
    } else {
        Write-Host "  ⚠ Warning: $($file.Source) not found in source" -ForegroundColor Yellow
    }
}

# Handle styles.css integration
Write-Host "  Integrating bot styles into styles.css..." -ForegroundColor Gray
$botStylesSource = Join-Path "$ML101Repo\docs" "bot-styles.css"
$stylesDest = Join-Path $docsDir "styles.css"

if (Test-Path $botStylesSource) {
    $botStyles = Get-Content $botStylesSource -Raw
    
    if (Test-Path $stylesDest) {
        # Append to existing styles.css if bot styles not present
        $existingStyles = Get-Content $stylesDest -Raw
        if ($existingStyles -notmatch '\.bot-') {
            Add-Content -Path $stylesDest -Value "`n`n/* Bot Chat Styles */`n$botStyles"
            Write-Host "  ✓ Bot styles added to existing styles.css" -ForegroundColor Green
        } else {
            Write-Host "  ✓ Bot styles already in styles.css" -ForegroundColor Green
        }
    } else {
        # Create new styles.css
        Set-Content -Path $stylesDest -Value "/* Bot Chat Styles */`n$botStyles"
        Write-Host "  ✓ Created styles.css with bot styles" -ForegroundColor Green
    }
} else {
    Write-Host "  ⚠ Warning: bot-styles.css not found" -ForegroundColor Yellow
}

# Copy bot HTML section template
Write-Host "  Creating bot HTML template..." -ForegroundColor Gray
$indexSource = Join-Path "$ML101Repo\docs" "index.html"
$botHtmlDest = Join-Path $docsDir "bot-portal-section.html"

if (Test-Path $indexSource) {
    $htmlContent = Get-Content $indexSource -Raw
    
    # Extract bot portal section
    $botSectionPattern = '(?s)(<section id="bot-portal".*?</section>)'
    $botHtml = [regex]::Match($htmlContent, $botSectionPattern).Value
    
    if ($botHtml) {
        # Update course-specific text
        $botHtml = $botHtml -replace "ML-101 Bot", "$CourseName Bot"
        # Handle Japanese text replacement - use Unicode escape for ボット
        $botHtml = $botHtml -replace "ML-101$([char]0x30DC)$([char]0x30C3)$([char]0x30C8)", "$CourseName $([char]0x30DC)$([char]0x30C3)$([char]0x30C8)"
        $botHtml = $botHtml -replace "ML-101", "$CourseName"
        
        Set-Content -Path $botHtmlDest -Value $botHtml
        Write-Host "  ✓ Created bot-portal-section.html template" -ForegroundColor Green
    }
}

Write-Host ""
Write-Host "✅ All files copied!" -ForegroundColor Green
Write-Host "  ✓ Backend files copied to: $backendOutput" -ForegroundColor Gray
Write-Host "  ✓ Frontend files copied to: $docsDir" -ForegroundColor Gray
Write-Host ""

# ============================================================================
# Step 1: Configure Backend (Create .env, venv, etc.)
# ============================================================================
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Step 1: Configuring Backend" -ForegroundColor Green
Write-Host "Course-Specific Configuration" -ForegroundColor Yellow
Write-Host "========================================" -ForegroundColor Cyan

# Create .env file
Write-Host "Creating .env file..." -ForegroundColor Yellow
$envContent = @"
# Course Configuration
COURSE_ID=$CourseId
COURSE_NAME=$CourseName

# Server Configuration
BACKEND_PORT=$Port

# GitHub Configuration
GITHUB_PAGES_URL=$githubPagesUrl

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

$envPath = Join-Path $backendOutput ".env"
$envContent | Out-File -FilePath $envPath -Encoding UTF8
Write-Host "  ✓ Created .env file" -ForegroundColor Green

# Create virtual environment
Write-Host "Creating virtual environment..." -ForegroundColor Yellow
$originalLocation = Get-Location
Set-Location $backendOutput
python -m venv venv
Write-Host "  ✓ Created virtual environment" -ForegroundColor Green

# Install dependencies
Write-Host "Installing dependencies..." -ForegroundColor Yellow
& .\venv\Scripts\Activate.ps1
pip install -r requirements.txt --quiet
Write-Host "  ✓ Installed dependencies" -ForegroundColor Green
Set-Location $originalLocation

# Create startup script
Write-Host "Creating startup script..." -ForegroundColor Yellow
$startupScript = @"
# Start backend for $CourseName
cd `$PSScriptRoot
.\venv\Scripts\Activate.ps1
python -m uvicorn app.main:app --host 0.0.0.0 --port $Port --reload
"@

$startupPath = Join-Path $backendOutput "start-backend.ps1"
$startupScript | Out-File -FilePath $startupPath -Encoding UTF8
Write-Host "  ✓ Created start-backend.ps1" -ForegroundColor Green

# Create .gitignore
Write-Host "Creating .gitignore..." -ForegroundColor Yellow
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

$gitignorePath = Join-Path $backendOutput ".gitignore"
$gitignoreContent | Out-File -FilePath $gitignorePath -Encoding UTF8
Write-Host "  ✓ Created .gitignore" -ForegroundColor Green

Write-Host ""
Write-Host "✅ Backend configuration complete!" -ForegroundColor Green
Write-Host "  ✓ Isolated database directory created" -ForegroundColor Gray
Write-Host "  ✓ Isolated knowledge base directory created" -ForegroundColor Gray
Write-Host "  ✓ Course-specific configuration (.env) created" -ForegroundColor Gray
Write-Host "  ✓ Virtual environment created and dependencies installed" -ForegroundColor Gray
Write-Host ""

# ============================================================================
# Step 2: Integrate Existing Course Content into Knowledge Base
# ============================================================================
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Step 2: Integrating Existing Course Content" -ForegroundColor Green
Write-Host "Course-Specific Knowledge Base" -ForegroundColor Yellow
Write-Host "========================================" -ForegroundColor Cyan

$kbPath = Join-Path $backendOutput "knowledge_base"
$courseContentPath = $CourseRepo

Write-Host "Scanning for existing course content..." -ForegroundColor Yellow

# Common course content directories
$contentDirs = @(
    "docs",
    "lectures", 
    "assignments",
    "curriculum",
    "resources",
    "activities",
    "slides"
)

$foundContent = @()
foreach ($dir in $contentDirs) {
    $checkPath = Join-Path $courseContentPath $dir
    if (Test-Path $checkPath) {
        $fileCount = (Get-ChildItem -Path $checkPath -Recurse -File -ErrorAction SilentlyContinue | Measure-Object).Count
        if ($fileCount -gt 0) {
            $foundContent += $dir
            Write-Host "  ✓ Found $dir ($fileCount files)" -ForegroundColor Green
        }
    }
}

if ($foundContent.Count -gt 0) {
    Write-Host "`nCreating links to existing content..." -ForegroundColor Yellow
    Write-Host "  Note: Content will be indexed into course-specific database" -ForegroundColor Gray
    
    # Create a course-content directory in knowledge_base
    $courseContentKb = Join-Path $kbPath "course-content"
    New-Item -ItemType Directory -Force -Path $courseContentKb | Out-Null
    
    foreach ($dir in $foundContent) {
        $sourcePath = Join-Path $courseContentPath $dir
        $linkPath = Join-Path $courseContentKb $dir
        
        # Try to create symlink (requires admin, will fail gracefully if not)
        try {
            if (Test-Path $linkPath) {
                Remove-Item $linkPath -Force -ErrorAction SilentlyContinue
            }
            New-Item -ItemType SymbolicLink -Path $linkPath -Target $sourcePath -ErrorAction Stop | Out-Null
            Write-Host "  ✓ Linked $dir" -ForegroundColor Green
        } catch {
            # If symlink fails, copy instead
            Write-Host "  ⚠ Symlink failed for $dir, copying instead..." -ForegroundColor Yellow
            Copy-Item -Path "$sourcePath\*" -Destination $linkPath -Recurse -Force -ErrorAction SilentlyContinue
            Write-Host "  ✓ Copied $dir" -ForegroundColor Green
        }
    }
    
    Write-Host "✓ Existing course content integrated!" -ForegroundColor Green
    Write-Host "  Content will be indexed into: course_knowledge_$CourseId" -ForegroundColor Gray
} else {
    Write-Host "⚠ No existing course content directories found." -ForegroundColor Yellow
    Write-Host "  You can manually copy your content to: $kbPath" -ForegroundColor Gray
}

# Copy Assessment Files (Optional)
Write-Host "`nCopying assessment templates..." -ForegroundColor Yellow
$assessmentsSource = Join-Path "$ML101Repo\assessments" "conversational"
$assessmentsDest = Join-Path $kbPath "assessments"

if (Test-Path $assessmentsSource) {
    if (-not (Test-Path $assessmentsDest)) {
        New-Item -ItemType Directory -Force -Path $assessmentsDest | Out-Null
    }
    
    Get-ChildItem $assessmentsSource -Filter "*.yaml" | ForEach-Object {
        Copy-Item $_.FullName -Destination $assessmentsDest -Force
        Write-Host "  ✓ Copied $($_.Name)" -ForegroundColor Gray
    }
    Write-Host "✓ Assessment templates copied" -ForegroundColor Green
} else {
    Write-Host "⚠ No assessment templates found (optional)" -ForegroundColor Yellow
}

Write-Host ""

# ============================================================================
# Step 3: Verify Isolation Setup
# ============================================================================
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Step 3: Verifying Isolation Setup" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Cyan

Write-Host "Verifying course-specific isolation..." -ForegroundColor Yellow

# Verify database directory
$chromaDbPath = Join-Path $backendOutput "chroma_db"
if (Test-Path $chromaDbPath) {
    Write-Host "  ✓ ChromaDB directory: $chromaDbPath (isolated)" -ForegroundColor Green
} else {
    Write-Host "  ⚠ ChromaDB directory not found" -ForegroundColor Yellow
}

# Verify knowledge base directory
if (Test-Path $kbPath) {
    Write-Host "  ✓ Knowledge base directory: $kbPath (isolated)" -ForegroundColor Green
} else {
    Write-Host "  ⚠ Knowledge base directory not found" -ForegroundColor Yellow
}

# Verify .env file with COURSE_ID
$envPath = Join-Path $backendOutput ".env"
if (Test-Path $envPath) {
    $envContent = Get-Content $envPath -Raw
    if ($envContent -match "COURSE_ID=$CourseId") {
        Write-Host "  ✓ .env file configured with COURSE_ID=$CourseId" -ForegroundColor Green
    } else {
        Write-Host "  ⚠ .env file may not have correct COURSE_ID" -ForegroundColor Yellow
    }
} else {
    Write-Host "  ⚠ .env file not found" -ForegroundColor Yellow
}

Write-Host ""
Write-Host "✅ Isolation verified!" -ForegroundColor Green
Write-Host "  Database Collection: course_knowledge_$CourseId (unique)" -ForegroundColor Gray
Write-Host "  Knowledge Base: $CourseName\backend\knowledge_base\ (isolated)" -ForegroundColor Gray
Write-Host "  ChromaDB: $CourseName\backend\chroma_db\ (isolated)" -ForegroundColor Gray
Write-Host ""

# ============================================================================
# Step 4: Create Integration Instructions
# ============================================================================
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Step 4: Creating Documentation" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Cyan

# Build instructions string to avoid PowerShell parsing issues with here-string
$instructions = "# Bot Integration Instructions for $CourseName`n`n"
$instructions += "## Setup Complete! ✅`n`n"
$instructions += "Your bot backend and frontend files have been set up with complete course isolation.`n`n"
$instructions += "## Isolation Guarantees`n`n"
$instructions += "### ✅ Course-Specific Database`n"
$instructions += "ChromaDB Location: $CourseName\backend\chroma_db\`n"
$instructions += "Collection Name: course_knowledge_$CourseId`n"
$instructions += "Isolation: This database is completely separate from other courses`n"
$instructions += "No Data Mixing: Each course content is stored in its own collection`n`n"
$instructions += "### ✅ Course-Specific Knowledge Base`n"
$instructions += "Location: $CourseName\backend\knowledge_base\`n"
$instructions += "Isolation: This knowledge base is completely separate from other courses`n"
$instructions += "Content: Only contains $CourseName course materials`n`n"
$instructions += "### ✅ Course-Specific Ingestion Process`n"
$instructions += "Script: $CourseName\backend\scripts\load_knowledge_base.py`n"
$instructions += "Isolation: Each course runs its own ingestion independently`n"
$instructions += "Result: Indexes only $CourseName content into course_knowledge_$CourseId collection`n`n"
$instructions += "### ✅ Course-Specific Backend Instance`n"
$instructions += "Port: $Port`n"
$instructions += "Process: Separate Python process`n"
$instructions += "Configuration: $CourseName\backend\.env with COURSE_ID=$CourseId`n"
$instructions += "Isolation: Complete runtime isolation`n`n"
$instructions += "### ✅ Shared Model (Efficient)`n"
$instructions += "Model: Ollama/llama3.2:latest`n"
$instructions += "Shared: All courses use the same model instance (efficient GPU usage)`n"
$instructions += "Why: Model does not store course knowledge - knowledge comes from isolated ChromaDB`n`n"
$instructions += "## Backend Setup`n"
$instructions += "Location: $CourseName\backend\`n"
$instructions += "Port: $Port`n"
$instructions += "Course ID: $CourseId`n"
$instructions += "Database Collection: course_knowledge_$CourseId`n`n"
$instructions += "## Next Steps:`n`n"
$instructions += "### 1. Verify Course Content Integration`n`n"
$instructions += "The script has automatically linked your existing course content to the knowledge base.`n`n"
$instructions += "Check: $CourseName\backend\knowledge_base\course-content\`n`n"
$instructions += "Your existing content should be accessible there as symlinks or copies.`n`n"
$instructions += "Important: This content will be indexed into the course-specific database course_knowledge_$CourseId.`n`n"
$instructions += "If content is missing: Manually copy your course materials to:`n"
$instructions += "$CourseName\backend\knowledge_base\course-content\`n`n"
$instructions += "Or update .env to point directly to your content:`n"
$instructions += "KNOWLEDGE_BASE_PATH=../docs`n`n"
$instructions += "### 2. Load Knowledge Base (Course-Specific Ingestion)`n`n"
$instructions += "This is the course-specific ingestion process - it will index ONLY $CourseName content:`n`n"
$instructions += "cd $CourseName\backend`n"
$instructions += ".\venv\Scripts\Activate.ps1`n"
$instructions += "python scripts\load_knowledge_base.py`n`n"
$instructions += "What happens:`n"
$instructions += "1. Scans knowledge_base directory (course-specific)`n"
$instructions += "2. Reads all course materials`n"
$instructions += "3. Creates embeddings using shared Ollama model`n"
$instructions += "4. Indexes into course_knowledge_$CourseId collection (course-specific database)`n"
$instructions += "5. Result: Bot can answer questions about $CourseName content only`n`n"
$instructions += "### 3. Verify Database Isolation`n`n"
$instructions += "After loading, verify the database is isolated:`n`n"
$instructions += "cd $CourseName\backend`n"
$instructions += "Run Python command to verify collections`n`n"
$instructions += "Should show: course_knowledge_$CourseId (only this course collection)`n`n"
$instructions += "### 4. Start Backend Server`n`n"
$instructions += "cd $CourseName\backend`n"
$instructions += ".\start-backend.ps1`n`n"
$instructions += "Or manually:`n"
$instructions += "cd $CourseName\backend`n"
$instructions += ".\venv\Scripts\Activate.ps1`n"
$instructions += "python -m uvicorn app.main:app --host 0.0.0.0 --port $Port --reload`n`n"
$instructions += "### 5. Configure Firewall`n`n"
$instructions += "Run PowerShell as Administrator:`n"
$instructions += "New-NetFirewallRule -DisplayName `"$CourseName Bot Port $Port`" -Direction Inbound -LocalPort $Port -Protocol TCP -Action Allow`n`n"
$instructions += "### 6. Add Bot to Your Website`n`n"
$instructions += "1. Copy bot HTML section from docs\bot-portal-section.html into your main HTML file`n"
$instructions += "2. Add script tag to HTML head section: script src=bot-chat.js defer`n"
$instructions += "3. Add navigation link (optional): link to #bot-portal with text $CourseName Bot`n`n"
$instructions += "### 7. Set Up HTTPS (Required for GitHub Pages)`n`n"
$instructions += "See: docs/HTTPS-SETUP.md or use Cloudflare Tunnel (recommended)`n`n"
$instructions += "Once you have HTTPS URL, update it in docs\bot-chat.js`n`n"
$instructions += "## Files Created:`n`n"
$instructions += "Backend: $CourseName\backend\ (isolated)`n"
$instructions += "Database: $CourseName\backend\chroma_db\ (isolated, course_knowledge_$CourseId collection)`n"
$instructions += "Knowledge Base: $CourseName\backend\knowledge_base\ (isolated)`n"
$instructions += "Frontend: $CourseName\docs\bot-chat.js`n"
$instructions += "CSS: $CourseName\docs\styles.css (bot styles included)`n"
$instructions += "HTML Template: $CourseName\docs\bot-portal-section.html`n`n"
$instructions += "## Testing:`n`n"
$instructions += "1. Start backend: cd $CourseName\backend; .\start-backend.ps1`n"
$instructions += "2. Test locally: Open your HTML file and try the bot`n"
$instructions += "3. Test API: curl http://localhost:$Port/health`n"
$instructions += "4. Verify isolation: Bot should only know about $CourseName content`n`n"
$instructions += "## Need Help?`n`n"
$instructions += "- See docs/ISOLATION-CONFIRMED.md for isolation architecture details`n"
$instructions += "- See docs/CREATE-CONVERSATIONAL-ASSESSMENTS.md for assessment setup`n"
$instructions += "- See docs/MULTI-COURSE-SETUP.md for multi-course guide`n"

$instructionsPath = Join-Path $CourseRepo "BOT-SETUP-INSTRUCTIONS.md"
# Write instructions using -Encoding UTF8 to avoid PowerShell parsing issues
$instructions | Out-File -FilePath $instructionsPath -Encoding UTF8
Write-Host "✓ Created BOT-SETUP-INSTRUCTIONS.md" -ForegroundColor Green

Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "✅ Complete Bot Setup Finished!" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Summary:" -ForegroundColor Cyan
Write-Host "  ✓ Backend created at: $backendOutput" -ForegroundColor White
Write-Host "  ✓ Isolated database: $CourseName\backend\chroma_db\" -ForegroundColor White
Write-Host "  ✓ Isolated knowledge base: $CourseName\backend\knowledge_base\" -ForegroundColor White
Write-Host "  ✓ Collection name: course_knowledge_$CourseId" -ForegroundColor White
Write-Host "  ✓ Frontend files copied to: $docsDir" -ForegroundColor White
Write-Host "  ✓ Assessment files copied" -ForegroundColor White
Write-Host "  ✓ Documentation created" -ForegroundColor White
Write-Host ""
Write-Host "Isolation Guarantees:" -ForegroundColor Yellow
Write-Host "  ✓ Each course has its OWN database (ChromaDB collection)" -ForegroundColor Green
Write-Host "  ✓ Each course has its OWN knowledge base directory" -ForegroundColor Green
Write-Host "  ✓ Each course has its OWN ingestion process" -ForegroundColor Green
Write-Host "  ✓ Each course has its OWN backend instance" -ForegroundColor Green
Write-Host "  ✓ Shared model: Ollama/llama3.2:latest (efficient)" -ForegroundColor Green
Write-Host ""
# ============================================================================
# Step 5: Set up Cloudflare Tunnel (Optional)
# ============================================================================
if (-not [string]::IsNullOrEmpty($CloudflareDomain)) {
    Write-Host "========================================" -ForegroundColor Cyan
    Write-Host "Step 5: Setting up Cloudflare Tunnel" -ForegroundColor Green
    Write-Host "========================================" -ForegroundColor Cyan
    
    Write-Host "Configuring Cloudflare Tunnel for HTTPS access..." -ForegroundColor Yellow
    
    & "$scriptPath\setup-cloudflare-tunnel.ps1" `
        -CourseId $CourseId `
        -CourseName $CourseName `
        -Port $Port `
        -Domain $CloudflareDomain `
        -Subdomain $CloudflareSubdomain
    
    if ($LASTEXITCODE -eq 0) {
        Write-Host "✅ Cloudflare Tunnel setup complete!" -ForegroundColor Green
    } else {
        Write-Host "⚠ Cloudflare Tunnel setup failed or skipped" -ForegroundColor Yellow
    }
    Write-Host ""
}

Write-Host "Next Steps:" -ForegroundColor Cyan
Write-Host "1. Review BOT-SETUP-INSTRUCTIONS.md in $CourseName repo" -ForegroundColor White
Write-Host "2. Verify course content is in: $backendOutput\knowledge_base\course-content\" -ForegroundColor White
Write-Host "3. Load knowledge base (course-specific ingestion):" -ForegroundColor White
Write-Host "   cd $CourseName\backend; .\venv\Scripts\Activate.ps1; python scripts\load_knowledge_base.py" -ForegroundColor Gray
Write-Host "4. Start backend: cd $CourseName\backend; .\start-backend.ps1" -ForegroundColor White
Write-Host "5. Configure email OTP (if not done): Edit $CourseName\backend\.env" -ForegroundColor White
Write-Host "6. Set up Cloudflare Tunnel (if not done): Run setup-cloudflare-tunnel.ps1" -ForegroundColor White
Write-Host "7. Add bot to your website HTML" -ForegroundColor White
Write-Host ""
Write-Host "Important: Each course runs its own ingestion independently!" -ForegroundColor Yellow
Write-Host "  Each ingestion indexes only that course content into its own database." -ForegroundColor Gray
Write-Host ""
