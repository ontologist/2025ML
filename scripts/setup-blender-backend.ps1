# Quick Setup Script for 2025BlenderUnity3DIntroClass Backend
# Usage: .\setup-blender-backend.ps1

$scriptPath = Split-Path -Parent $MyInvocation.MyCommand.Path
$projectRoot = Split-Path -Parent $scriptPath

& "$scriptPath\setup-course-backend.ps1" `
    -CourseId "blender" `
    -CourseName "2025BlenderUnity3DIntroClass" `
    -Port 8003 `
    -GitHubPagesUrl "https://ontologist.github.io/2025BlenderUnity3DIntroClass/" `
    -SourceBackend "$projectRoot\2025ML\backend" `
    -OutputDirectory "$projectRoot\2025BlenderUnity3DIntroClass\backend"

Write-Host ""
Write-Host "✅ 2025BlenderUnity3DIntroClass Backend Setup Complete!" -ForegroundColor Green
Write-Host ""
Write-Host "Next steps:" -ForegroundColor Cyan
Write-Host "1. Copy course materials to: $projectRoot\2025BlenderUnity3DIntroClass\backend\knowledge_base" -ForegroundColor White
Write-Host "2. Load knowledge base: cd $projectRoot\2025BlenderUnity3DIntroClass\backend; .\venv\Scripts\Activate.ps1; python scripts\load_knowledge_base.py" -ForegroundColor White
Write-Host "3. Start backend: cd $projectRoot\2025BlenderUnity3DIntroClass\backend; .\start-backend.ps1" -ForegroundColor White
Write-Host "4. Open firewall: Run as Administrator: New-NetFirewallRule -DisplayName '2025Blender Bot Port 8003' -Direction Inbound -LocalPort 8003 -Protocol TCP -Action Allow" -ForegroundColor White

