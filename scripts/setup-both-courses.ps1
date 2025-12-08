# Setup Bot for Both Courses (2025HCI and 2025BlenderUnity3DIntroClass)
# This script sets up complete bot systems for both courses

$scriptPath = Split-Path -Parent $MyInvocation.MyCommand.Path

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Setting Up Bots for Both Courses" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Setup 2025BlenderUnity3DIntroClass (Course 3)
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Course 1: 2025BlenderUnity3DIntroClass" -ForegroundColor Yellow
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

& "$scriptPath\setup-complete-course-bot.ps1" `
    -CourseId "blender" `
    -CourseName "2025BlenderUnity3DIntroClass" `
    -Port 8003

if ($LASTEXITCODE -ne 0) {
    Write-Host "❌ Failed to set up 2025BlenderUnity3DIntroClass bot!" -ForegroundColor Red
    exit 1
}

Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Course 2: 2025HCI" -ForegroundColor Yellow
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Setup 2025HCI (Course 2)
& "$scriptPath\setup-complete-course-bot.ps1" `
    -CourseId "hci" `
    -CourseName "2025HCI" `
    -Port 8002

if ($LASTEXITCODE -ne 0) {
    Write-Host "❌ Failed to set up 2025HCI bot!" -ForegroundColor Red
    exit 1
}

Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "✅ Both Courses Set Up Successfully!" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Setup Summary:" -ForegroundColor Cyan
Write-Host ""
Write-Host "2025BlenderUnity3DIntroClass:" -ForegroundColor Yellow
Write-Host "  Backend: 2025BlenderUnity3DIntroClass\backend\" -ForegroundColor White
Write-Host "  Port: 8003" -ForegroundColor White
Write-Host "  Frontend: 2025BlenderUnity3DIntroClass\docs\bot-chat.js" -ForegroundColor White
Write-Host ""
Write-Host "2025HCI:" -ForegroundColor Yellow
Write-Host "  Backend: 2025HCI\backend\" -ForegroundColor White
Write-Host "  Port: 8002" -ForegroundColor White
Write-Host "  Frontend: 2025HCI\docs\bot-chat.js" -ForegroundColor White
Write-Host ""
Write-Host "Next Steps for Each Course:" -ForegroundColor Cyan
Write-Host "1. Copy course materials to backend\knowledge_base\" -ForegroundColor White
Write-Host "2. Load knowledge base (python scripts\load_knowledge_base.py)" -ForegroundColor White
Write-Host "3. Start backend server (.\start-backend.ps1)" -ForegroundColor White
Write-Host "4. Add bot HTML to your website" -ForegroundColor White
Write-Host "5. Set up HTTPS for GitHub Pages" -ForegroundColor White
Write-Host ""
Write-Host "See BOT-SETUP-INSTRUCTIONS.md in each course repo for details." -ForegroundColor Gray
Write-Host ""

