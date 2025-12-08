# Copy Bot Files to Other Course Repos
# Usage: .\copy-bot-files-to-repos.ps1
# Or: .\copy-bot-files-to-repos.ps1 -Course2Repo "C:\custom\path" -Course3Repo "C:\custom\path"

param(
    [string]$Course2Repo = "C:\Users\yuri\OneDrive\Documents\GitHub\2025HCI",
    [string]$Course3Repo = "C:\Users\yuri\OneDrive\Documents\GitHub\2025BlenderUnity3DIntroClass",
    [string]$ML101Repo = "C:\Users\yuri\OneDrive\Documents\GitHub\2025ML"
)

Write-Host "Copying bot files to other course repos..." -ForegroundColor Green
Write-Host ""

# Verify source repo exists
if (-not (Test-Path "$ML101Repo\docs\bot-chat.js")) {
    Write-Host "Error: ML-101 repo not found at $ML101Repo" -ForegroundColor Red
    exit 1
}

# Function to copy bot files to a course repo
function Copy-BotFiles {
    param(
        [string]$TargetRepo,
        [string]$CourseName,
        [int]$Port,
        [string]$CourseId
    )
    
    Write-Host "Processing $CourseName..." -ForegroundColor Cyan
    Write-Host "  Target: $TargetRepo" -ForegroundColor Gray
    
    # Check if target repo exists
    if (-not (Test-Path $TargetRepo)) {
        Write-Host "  ⚠ Warning: Target repo not found at $TargetRepo" -ForegroundColor Yellow
        Write-Host "  Creating directory..." -ForegroundColor Yellow
        New-Item -ItemType Directory -Force -Path $TargetRepo | Out-Null
    }
    
    # Create docs directory if it doesn't exist
    $docsDir = Join-Path $TargetRepo "docs"
    if (-not (Test-Path $docsDir)) {
        Write-Host "  Creating docs directory..." -ForegroundColor Yellow
        New-Item -ItemType Directory -Force -Path $docsDir | Out-Null
    }
    
    # 1. Copy bot-chat.js
    Write-Host "  1. Copying bot-chat.js..." -ForegroundColor Yellow
    $botJsSource = Join-Path "$ML101Repo\docs" "bot-chat.js"
    $botJsDest = Join-Path $docsDir "bot-chat.js"
    
    if (Test-Path $botJsSource) {
        Copy-Item -Path $botJsSource -Destination $botJsDest -Force
        Write-Host "     ✓ Copied bot-chat.js" -ForegroundColor Green
        
        # Update API URLs in bot-chat.js
        Write-Host "     Updating API URLs (port $Port)..." -ForegroundColor Yellow
        $botJsContent = Get-Content $botJsDest -Raw
        
        # Replace localhost port
        $botJsContent = $botJsContent -replace 'localhost:8001', "localhost:$Port"
        
        # Replace fixed IP port
        $botJsContent = $botJsContent -replace '192\.218\.175\.132:8001', "192.218.175.132:$Port"
        
        # Update class name (optional - makes it unique)
        $botJsContent = $botJsContent -replace 'ML101BotChat', "${CourseId}BotChat"
        $botJsContent = $botJsContent -replace 'ml101BotChat', "${CourseId}BotChat"
        
        Set-Content -Path $botJsDest -Value $botJsContent -NoNewline
        Write-Host "     ✓ Updated API URLs to port $Port" -ForegroundColor Green
    } else {
        Write-Host "     ✗ Error: bot-chat.js not found in source" -ForegroundColor Red
    }
    
    # 2. Handle styles.css
    Write-Host "  2. Handling styles.css..." -ForegroundColor Yellow
    $stylesSource = Join-Path "$ML101Repo\docs" "styles.css"
    $stylesDest = Join-Path $docsDir "styles.css"
    
    if (Test-Path $stylesSource) {
        # Read bot-related CSS
        $allStyles = Get-Content $stylesSource -Raw
        
        # Extract bot styles (from .bot-notice to end of bot styles)
        $botStylesPattern = '(?s)(\.bot-notice.*?)(?=\n\/\*|$)'
        $botStyles = [regex]::Match($allStyles, '\.bot-notice.*?(?=\n\/\*[^b]|$)', [System.Text.RegularExpressions.RegexOptions]::Singleline).Value
        
        # If no bot styles found, try to find all .bot-* styles
        if (-not $botStyles -or $botStyles.Length -lt 100) {
            # Extract all .bot-* styles
            $botStyles = [regex]::Match($allStyles, '(?s)(\.bot-.*?)(?=\n\.[^b]|$)', [System.Text.RegularExpressions.RegexOptions]::Singleline).Value
        }
        
        if ($botStyles) {
            if (Test-Path $stylesDest) {
                # Append to existing styles.css
                Write-Host "     Appending bot styles to existing styles.css..." -ForegroundColor Gray
                $existingStyles = Get-Content $stylesDest -Raw
                if ($existingStyles -notmatch '\.bot-') {
                    Add-Content -Path $stylesDest -Value "`n`n/* Bot Chat Styles */`n$botStyles"
                    Write-Host "     ✓ Added bot styles to existing styles.css" -ForegroundColor Green
                } else {
                    Write-Host "     ⚠ Bot styles already exist in styles.css, skipping..." -ForegroundColor Yellow
                }
            } else {
                # Create new styles.css with bot styles
                Write-Host "     Creating new styles.css with bot styles..." -ForegroundColor Gray
                Set-Content -Path $stylesDest -Value "/* Bot Chat Styles */`n$botStyles"
                Write-Host "     ✓ Created styles.css with bot styles" -ForegroundColor Green
            }
        } else {
            Write-Host "     ⚠ Warning: Could not extract bot styles from source" -ForegroundColor Yellow
            Write-Host "     You may need to manually copy bot styles from ML-101 styles.css" -ForegroundColor Yellow
        }
    } else {
        Write-Host "     ⚠ Warning: styles.css not found in source" -ForegroundColor Yellow
    }
    
    # 3. Extract and create bot HTML section
    Write-Host "  3. Creating bot HTML template..." -ForegroundColor Yellow
    $indexSource = Join-Path "$ML101Repo\docs" "index.html"
    $botHtmlDest = Join-Path $docsDir "bot-portal-section.html"
    
    if (Test-Path $indexSource) {
        $htmlContent = Get-Content $indexSource -Raw
        
        # Extract bot portal section
        $botSectionPattern = '(?s)(<section id="bot-portal".*?</section>)'
        $botHtml = [regex]::Match($htmlContent, $botSectionPattern).Value
        
        if ($botHtml) {
            # Update course-specific text
            $botHtml = $botHtml -replace 'ML-101 Bot', "$CourseName Bot"
            $botHtml = $botHtml -replace 'ML-101ボット', "$CourseName ボット"
            $botHtml = $botHtml -replace 'ML-101', $CourseName
            
            # Save as template
            Set-Content -Path $botHtmlDest -Value $botHtml
            Write-Host "     ✓ Created bot-portal-section.html (template)" -ForegroundColor Green
            Write-Host "     → Copy this section into your course's HTML file" -ForegroundColor Gray
        } else {
            Write-Host "     ⚠ Warning: Could not extract bot portal section" -ForegroundColor Yellow
        }
    } else {
        Write-Host "     ⚠ Warning: index.html not found in source" -ForegroundColor Yellow
    }
    
    # 4. Create integration instructions
    Write-Host "  4. Creating integration instructions..." -ForegroundColor Yellow
    $instructions = @"
# Bot Integration Instructions for $CourseName

## Files Copied:
1. ✅ bot-chat.js (updated with port $Port)
2. ✅ Bot styles added to styles.css
3. ✅ bot-portal-section.html (HTML template)

## Next Steps:

### 1. Add Script Tag to Your HTML
Add this to the `<head>` section of your main HTML file:
```html
<script src="bot-chat.js" defer></script>
```

### 2. Add Bot Portal Section
Open `bot-portal-section.html` and copy its contents into your main HTML file where you want the bot to appear.

### 3. Add Navigation Link (Optional)
If you have a navigation menu, add:
```html
<a href="#bot-portal">$CourseName Bot</a>
```

### 4. Set Up HTTPS (Required for GitHub Pages)
- See: docs/HTTPS-SETUP.md
- Update the HTTPS URL in bot-chat.js once you have it

### 5. Test
- Start your backend on port $Port
- Open your HTML file locally
- Test the bot chat interface

## Files Location:
- JavaScript: docs/bot-chat.js
- CSS: docs/styles.css (bot styles included)
- HTML Template: docs/bot-portal-section.html

"@
    
    $instructionsPath = Join-Path $docsDir "BOT-INTEGRATION-INSTRUCTIONS.md"
    Set-Content -Path $instructionsPath -Value $instructions
    Write-Host "     ✓ Created BOT-INTEGRATION-INSTRUCTIONS.md" -ForegroundColor Green
    
    Write-Host "  ✅ Completed $CourseName setup" -ForegroundColor Green
    Write-Host ""
}

# Copy to 2025HCI (Course 2)
Copy-BotFiles -TargetRepo $Course2Repo -CourseName "2025HCI" -Port 8002 -CourseId "hci"

# Copy to 2025BlenderUnity3DIntroClass (Course 3)
Copy-BotFiles -TargetRepo $Course3Repo -CourseName "2025BlenderUnity3DIntroClass" -Port 8003 -CourseId "blender"

Write-Host "Summary:" -ForegroundColor Green
Write-Host "  ✓ Files copied to 2025HCI repo" -ForegroundColor Green
Write-Host "  ✓ Files copied to 2025BlenderUnity3DIntroClass repo" -ForegroundColor Green
Write-Host ""
Write-Host "Next steps:" -ForegroundColor Cyan
Write-Host "1. Review the copied files in each repo's docs/ folder" -ForegroundColor White
Write-Host "2. Follow BOT-INTEGRATION-INSTRUCTIONS.md in each repo" -ForegroundColor White
Write-Host "3. Set up HTTPS for each course backend" -ForegroundColor White
Write-Host "4. Test the bot interface" -ForegroundColor White

