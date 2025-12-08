# Script to copy all course materials to knowledge base
# Run from project root directory

$ErrorActionPreference = "Continue"

Write-Host "Copying course materials to knowledge base..." -ForegroundColor Green

# Get project root (parent of backend directory)
# PSScriptRoot is backend/scripts, so go up 2 levels to get project root
$projectRoot = Split-Path -Parent (Split-Path -Parent $PSScriptRoot)
$kbPath = Join-Path $projectRoot "backend\knowledge_base"

Write-Host "Project root: $projectRoot" -ForegroundColor Yellow
Write-Host "Knowledge base: $kbPath" -ForegroundColor Yellow

# Copy each directory
$directories = @(
    @{Source = "curriculum"; Dest = "curriculum"},
    @{Source = "assessments"; Dest = "assessments"},
    @{Source = "activities\week-plans"; Dest = "week-plans"},
    @{Source = "activities"; Dest = "activities"; Filter = "*.py"},
    @{Source = "docs"; Dest = "docs"},
    @{Source = "lectures"; Dest = "lectures"},
    @{Source = "resources"; Dest = "resources"},
    @{Source = "bot-config\activity-guides"; Dest = "bot-guides"}
)

foreach ($dir in $directories) {
    $sourcePath = Join-Path $projectRoot $dir.Source
    $destPath = Join-Path $kbPath $dir.Dest
    
    if (Test-Path $sourcePath) {
        Write-Host "Copying $($dir.Source) -> $($dir.Dest)..." -ForegroundColor Cyan
        
        if ($dir.Filter) {
            # Copy specific file types
            Get-ChildItem -Path $sourcePath -Filter $dir.Filter -Recurse | 
                Copy-Item -Destination $destPath -Force -ErrorAction SilentlyContinue
        } else {
            # Copy everything
            Copy-Item -Path "$sourcePath\*" -Destination $destPath -Recurse -Force -ErrorAction SilentlyContinue
        }
        
        $fileCount = (Get-ChildItem -Path $destPath -Recurse -File -ErrorAction SilentlyContinue | Measure-Object).Count
        Write-Host "  ✓ Copied $fileCount files" -ForegroundColor Green
    } else {
        Write-Host "  ⚠ Source not found: $sourcePath" -ForegroundColor Yellow
    }
}

# Summary
$totalFiles = (Get-ChildItem -Path $kbPath -Recurse -File -ErrorAction SilentlyContinue | Measure-Object).Count
Write-Host "`nTotal files in knowledge base: $totalFiles" -ForegroundColor Green

Write-Host "`nKnowledge base structure:" -ForegroundColor Cyan
Get-ChildItem -Path $kbPath -Directory | ForEach-Object {
    $fileCount = (Get-ChildItem -Path $_.FullName -Recurse -File -ErrorAction SilentlyContinue | Measure-Object).Count
    Write-Host "  $($_.Name): $fileCount files" -ForegroundColor Gray
}



