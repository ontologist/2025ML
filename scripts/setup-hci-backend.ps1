# Quick Setup Script for 2025HCI Backend
# Usage: .\setup-hci-backend.ps1

$scriptPath = Split-Path -Parent $MyInvocation.MyCommand.Path
$projectRoot = Split-Path -Parent $scriptPath

& "$scriptPath\setup-course-backend.ps1" `
    -CourseId "hci" `
    -CourseName "2025HCI" `
    -Port 8002 `
    -GitHubPagesUrl "https://ontologist.github.io/2025HCI/" `
    -SourceBackend "$projectRoot\2025ML\backend" `
    -OutputDirectory "$projectRoot\2025HCI\backend"

Write-Host ""
Write-Host "✅ 2025HCI Backend Setup Complete!" -ForegroundColor Green
Write-Host ""
Write-Host "Next steps:" -ForegroundColor Cyan
Write-Host "1. Copy course materials to: $projectRoot\2025HCI\backend\knowledge_base" -ForegroundColor White
Write-Host "2. Load knowledge base: cd $projectRoot\2025HCI\backend; .\venv\Scripts\Activate.ps1; python scripts\load_knowledge_base.py" -ForegroundColor White
Write-Host "3. Start backend: cd $projectRoot\2025HCI\backend; .\start-backend.ps1" -ForegroundColor White
Write-Host "4. Open firewall: Run as Administrator: New-NetFirewallRule -DisplayName '2025HCI Bot Port 8002' -Direction Inbound -LocalPort 8002 -Protocol TCP -Action Allow" -ForegroundColor White

