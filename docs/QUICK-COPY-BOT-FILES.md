# Quick Guide: Copy Bot Files to Other Course Repos

## Option 1: Use the Automated Script (Easiest)

Run this PowerShell script from the ML-101 repo:

```powershell
cd C:\Users\yuri\OneDrive\Documents\GitHub\2025ML\scripts
.\copy-bot-files-to-repos.ps1
```

**That's it!** The script will automatically:
- Use default paths: `2025HCI` and `2025BlenderUnity3DIntroClass` repos
- Copy `bot-chat.js` and update API ports (8002 for HCI, 8003 for Blender)
- Extract and add bot CSS styles
- Create HTML template for bot portal
- Create integration instructions

**To use custom paths:**
```powershell
.\copy-bot-files-to-repos.ps1 `
    -Course2Repo "C:\custom\path\to\2025HCI" `
    -Course3Repo "C:\custom\path\to\2025BlenderUnity3DIntroClass"
```

---

## Option 2: Manual Copy (Step-by-Step)

### Step 1: Copy `bot-chat.js`

**For 2025HCI (Port 8002):**
```powershell
Copy-Item "C:\Users\yuri\OneDrive\Documents\GitHub\2025ML\docs\bot-chat.js" `
    -Destination "C:\Users\yuri\OneDrive\Documents\GitHub\2025HCI\docs\bot-chat.js"
```

**For 2025BlenderUnity3DIntroClass (Port 8003):**
```powershell
Copy-Item "C:\Users\yuri\OneDrive\Documents\GitHub\2025ML\docs\bot-chat.js" `
    -Destination "C:\Users\yuri\OneDrive\Documents\GitHub\2025BlenderUnity3DIntroClass\docs\bot-chat.js"
```

**Then edit `bot-chat.js` - Update 3 locations:**

**For 2025HCI (port 8002):**
- Line ~29: Change `localhost:8001` → `localhost:8002`
- Line ~33: Change the HTTPS URL (you'll set this up later)
- Line ~36: Change `192.218.175.132:8001` → `192.218.175.132:8002`

**For 2025BlenderUnity3DIntroClass (port 8003):**
- Line ~29: Change `localhost:8001` → `localhost:8003`
- Line ~33: Change the HTTPS URL (you'll set this up later)
- Line ~36: Change `192.218.175.132:8001` → `192.218.175.132:8003`

### Step 2: Copy Bot CSS Styles

**Option A: Copy entire bot-styles.css file**
```powershell
# For 2025HCI
Copy-Item "C:\Users\yuri\OneDrive\Documents\GitHub\2025ML\docs\bot-styles.css" `
    -Destination "C:\Users\yuri\OneDrive\Documents\GitHub\2025HCI\docs\bot-styles.css"

# For 2025BlenderUnity3DIntroClass
Copy-Item "C:\Users\yuri\OneDrive\Documents\GitHub\2025ML\docs\bot-styles.css" `
    -Destination "C:\Users\yuri\OneDrive\Documents\GitHub\2025BlenderUnity3DIntroClass\docs\bot-styles.css"
```

Then in your HTML file, add:
```html
<link rel="stylesheet" href="bot-styles.css">
```

**Option B: Add to existing styles.css**
1. Open `docs/bot-styles.css` from ML-101 repo
2. Copy all the content
3. Paste it at the end of your course's `docs/styles.css` file

### Step 3: Copy HTML Section

1. **Open** `docs/index.html` from ML-101 repo
2. **Find** the bot portal section (starts around line 326 with `<section id="bot-portal">`)
3. **Copy** the entire section (until `</section>`)
4. **Paste** into your course's HTML file (e.g., `docs/index.html` or `index.html`)

5. **Customize the HTML:**
   - For 2025HCI: Change "ML-101 Bot" to "2025HCI Bot"
   - For 2025BlenderUnity3DIntroClass: Change "ML-101 Bot" to "2025BlenderUnity3DIntroClass Bot"
   - Update welcome messages
   - Adjust any course-specific text

### Step 4: Add Script Tag to HTML

Add this to the `<head>` section of your HTML file:

```html
<head>
    <!-- ... other head content ... -->
    <script src="bot-chat.js" defer></script>
</head>
```

### Step 5: Add Navigation Link (Optional)

If you have a navigation menu, add a link to the bot portal:

```html
<nav>
    <!-- ... other nav links ... -->
    <a href="#bot-portal">Course Bot</a>
</nav>
```

---

## File Checklist

Copy these files to each course repo:

| File | Source | Destination | Course | Port |
|------|--------|-------------|--------|------|
| `bot-chat.js` | `2025ML/docs/bot-chat.js` | `2025HCI/docs/bot-chat.js` | 2025HCI | 8002 |
| `bot-chat.js` | `2025ML/docs/bot-chat.js` | `2025BlenderUnity3DIntroClass/docs/bot-chat.js` | Blender | 8003 |
| Bot CSS | `2025ML/docs/bot-styles.css` | Add to `styles.css` | Both | - |
| HTML Section | `2025ML/docs/index.html` (lines 326-410) | Your HTML file | Both | - |

---

## After Copying: Quick Test

1. **Start the backend** for that course:
   - 2025HCI: port 8002
   - 2025BlenderUnity3DIntroClass: port 8003
2. **Open your HTML file** locally
3. **Check browser console** (F12) for any errors
4. **Send a test message** to verify it works

---

## Summary of Course Setup

| Course | Repo Name | Backend Port | Course ID | GitHub Pages |
|--------|-----------|-------------|-----------|--------------|
| ML-101 | 2025ML | 8001 | ml101 | ontologist.github.io/2025ML |
| HCI | 2025HCI | 8002 | hci | ontologist.github.io/2025HCI |
| Blender | 2025BlenderUnity3DIntroClass | 8003 | blender | ontologist.github.io/2025BlenderUnity3DIntroClass |

---

**Need more help?** See `docs/COPY-FRONTEND-FILES.md` for detailed instructions.
