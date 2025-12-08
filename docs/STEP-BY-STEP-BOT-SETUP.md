# Step-by-Step Bot Setup for Existing Courses

## Overview

This guide explains how to add bot functionality to courses that **already have their content** (lectures, slides, assignments, etc.). You only need to add the bot system and bot-related pages.

---

## What You're Adding

### Bot System Components:
1. **Backend API** - Bot server (Python/FastAPI)
2. **Frontend Interface** - Chat UI on your website
3. **Knowledge Base Integration** - Connect bot to existing course materials
4. **Bot Resources** - Quick Start Guide, Portal page
5. **RAG System** - Vector database for document search

### What You're NOT Copying:
- ❌ Lectures (already exist)
- ❌ Slides (already exist)
- ❌ Assignments (already exist)
- ✅ Only bot-related pages and system

---

## Step 1: Run the Setup Script

This creates the backend and frontend files:

```powershell
cd C:\Users\yuri\OneDrive\Documents\GitHub\2025ML\scripts
.\setup-complete-course-bot.ps1 -CourseId "blender" -CourseName "2025BlenderUnity3DIntroClass" -Port 8003
```

**What it does:**
- Creates `2025BlenderUnity3DIntroClass\backend\` directory
- Sets up Python virtual environment
- Copies bot backend code
- Creates frontend files (`bot-chat.js`, styles, HTML template)
- Configures ports and course IDs

---

## Step 2: Integrate Existing Course Materials into Bot Knowledge Base

Since your course materials already exist, you need to tell the bot where to find them.

### Option A: Use Existing Course Directory Structure

Your course repo probably looks like:
```
2025BlenderUnity3DIntroClass/
├── docs/              (or similar)
│   ├── lectures/
│   ├── assignments/
│   ├── slides/
│   └── ...
├── curriculum/
├── resources/
└── ...
```

**Update the knowledge base path** to point to your existing content:

1. **Edit `.env` file** in `backend\`:
   ```env
   KNOWLEDGE_BASE_PATH=../docs
   ```
   Or if your content is in multiple locations:
   ```env
   KNOWLEDGE_BASE_PATH=../  # Point to repo root
   ```

2. **Or create symlinks** to point bot's knowledge_base to your existing content:
   ```powershell
   cd 2025BlenderUnity3DIntroClass\backend
   # Remove empty knowledge_base directory
   Remove-Item knowledge_base -Force
   # Create symlink to your existing docs
   New-Item -ItemType SymbolicLink -Path "knowledge_base" -Target "..\docs"
   ```

### Option B: Copy Bot-Specific Resources Only

If you want to keep bot stuff separate, copy only bot-related pages:

```powershell
cd 2025BlenderUnity3DIntroClass\backend

# Copy bot-specific resources (if they exist in ML-101)
Copy-Item "..\..\2025ML\resources\week01-materials\bot-portal-quick-start-guide.md" `
    -Destination "knowledge_base\resources\bot-portal-quick-start-guide.md" -Force

Copy-Item "..\..\2025ML\resources\week01-materials\ml-concepts-quick-reference.md" `
    -Destination "knowledge_base\resources\ml-concepts-quick-reference.md" -Force
```

### Option C: Point to Multiple Directories (Recommended)

Modify the knowledge base loader to include your existing course structure:

1. **Edit `backend\scripts\load_knowledge_base.py`** (or create a custom one):

```python
# Add paths to your existing course content
knowledge_base_paths = [
    "../docs",           # Your existing docs
    "../lectures",       # Your existing lectures  
    "../assignments",    # Your existing assignments
    "../curriculum",     # Your existing curriculum
    "./knowledge_base"   # Bot-specific resources
]
```

Then update `rag_service.py` to handle multiple paths, or just copy/point to your existing directories.

### Recommended Approach: Symlink or Copy Existing Content

**Best option:** Create a knowledge base that includes your existing content:

```powershell
cd 2025BlenderUnity3DIntroClass\backend

# Create knowledge_base structure
New-Item -ItemType Directory -Force -Path "knowledge_base\course-content"
New-Item -ItemType Directory -Force -Path "knowledge_base\bot-resources"

# Copy your existing course content (or use symlinks)
# Option 1: Copy (safe, but uses more space)
Copy-Item "..\docs\*" -Destination "knowledge_base\course-content\" -Recurse -Force
Copy-Item "..\lectures\*" -Destination "knowledge_base\course-content\lectures\" -Recurse -Force
Copy-Item "..\assignments\*" -Destination "knowledge_base\course-content\assignments\" -Recurse -Force

# Option 2: Symlink (saves space, but requires admin rights)
# Run PowerShell as Administrator:
New-Item -ItemType SymbolicLink -Path "knowledge_base\course-content\docs" -Target "..\docs"
New-Item -ItemType SymbolicLink -Path "knowledge_base\course-content\lectures" -Target "..\lectures"
```

---

## Step 3: Add Bot-Specific Resources

Copy bot-related pages from ML-101 (if you want them):

```powershell
cd C:\Users\yuri\OneDrive\Documents\GitHub\2025BlenderUnity3DIntroClass

# Create resources directory if needed
New-Item -ItemType Directory -Force -Path "resources\bot-materials" | Out-Null

# Copy bot quick start guide (adapt for your course)
Copy-Item "..\2025ML\resources\week01-materials\bot-portal-quick-start-guide.md" `
    -Destination "resources\bot-materials\bot-quick-start-guide.md"

# Edit the guide to match your course name
# (Replace "ML-101" with "2025BlenderUnity3DIntroClass")
```

---

## Step 4: Load Knowledge Base

After setting up the knowledge base paths, load everything:

```powershell
cd 2025BlenderUnity3DIntroClass\backend
.\venv\Scripts\Activate.ps1
python scripts\load_knowledge_base.py
```

This will:
- Scan all your existing course materials
- Create embeddings for each document
- Store in ChromaDB (vector database)
- Make content searchable by the bot

**Expected output:**
```
Loaded X documents
Split into Y text chunks
Successfully indexed Y chunks
```

---

## Step 5: Start Backend Server

```powershell
cd 2025BlenderUnity3DIntroClass\backend
.\start-backend.ps1
```

Or manually:
```powershell
.\venv\Scripts\Activate.ps1
python -m uvicorn app.main:app --host 0.0.0.0 --port 8003 --reload
```

---

## Step 6: Configure Firewall

Run PowerShell as Administrator:

```powershell
New-NetFirewallRule -DisplayName "2025BlenderUnity3DIntroClass Bot Port 8003" `
    -Direction Inbound -LocalPort 8003 -Protocol TCP -Action Allow
```

---

## Step 7: Add Bot to Your Website

### 7a. Copy Bot HTML Section

1. Open `docs\bot-portal-section.html` (created by setup script)
2. Copy the entire `<section id="bot-portal">` section
3. Paste into your course's main HTML file (e.g., `docs\index.html`)

### 7b. Add Script Tag

Add to your HTML `<head>` section:

```html
<script src="bot-chat.js" defer></script>
```

### 7c. Add Navigation Link (Optional)

If you have a navigation menu, add:

```html
<a href="#bot-portal">2025BlenderUnity3DIntroClass Bot</a>
```

### 7d. Verify Files

Make sure these files exist in your `docs\` folder:
- ✅ `bot-chat.js`
- ✅ `styles.css` (with bot styles)
- ✅ Your main HTML file (with bot section added)

---

## Step 8: Test Locally

1. **Start backend** (if not running):
   ```powershell
   cd 2025BlenderUnity3DIntroClass\backend
   .\start-backend.ps1
   ```

2. **Open your HTML file** in browser:
   ```
   file:///C:/Users/yuri/OneDrive/Documents/GitHub/2025BlenderUnity3DIntroClass/docs/index.html
   ```
   Or use a local server:
   ```powershell
   cd docs
   python -m http.server 8000
   ```
   Then visit: `http://localhost:8000/index.html`

3. **Test the bot** - Send a message and verify it responds

---

## Step 9: Set Up HTTPS (For GitHub Pages)

Since your frontend is on GitHub Pages (HTTPS), you need HTTPS for the backend.

**Options:**
1. **Cloudflare Tunnel** (Recommended - Free, permanent)
2. **ngrok** (Quick testing, but URL changes)
3. **Reverse Proxy** (If you have a domain)

See `docs/HTTPS-SETUP.md` for details.

Once you have HTTPS URL, update `docs\bot-chat.js`:
```javascript
return 'https://your-https-url.com/api'; // Line ~33
```

---

## Step 10: Commit and Deploy

```powershell
cd 2025BlenderUnity3DIntroClass

git add .
git commit -m "Add bot functionality and bot portal"
git push origin main
```

GitHub Pages will automatically update (may take 1-2 minutes).

---

## Summary: What Gets Added

### Files Created by Script:
- `backend/` - Complete backend system
- `docs/bot-chat.js` - Chat interface JavaScript
- `docs/bot-portal-section.html` - HTML template
- `docs/styles.css` - Bot styles (added to existing)

### What You Need to Do:
1. ✅ Point knowledge base to existing course content
2. ✅ Load knowledge base (indexes your existing materials)
3. ✅ Add bot HTML section to your website
4. ✅ Set up HTTPS
5. ✅ Test and deploy

### What Bot Can Access:
- ✅ Your existing lectures
- ✅ Your existing slides
- ✅ Your existing assignments
- ✅ Your existing curriculum
- ✅ Any course materials you point it to

---

## Troubleshooting

**Problem:** Bot can't find course materials
- **Solution:** Check `KNOWLEDGE_BASE_PATH` in `.env` file
- **Solution:** Verify files exist in knowledge_base directory
- **Solution:** Re-run `load_knowledge_base.py`

**Problem:** Bot doesn't know about your course content
- **Solution:** Make sure you loaded the knowledge base after adding content
- **Solution:** Check that your files are in supported formats (.md, .txt, .html, .py, .yaml, .json, .csv)

**Problem:** Bot gives generic answers
- **Solution:** Increase RAG context (k parameter in bot_service.py)
- **Solution:** Verify knowledge base loaded correctly (check logs)

---

**Need help?** See:
- `docs/CREATE-CONVERSATIONAL-ASSESSMENTS.md` - For assessments
- `docs/MULTI-COURSE-SETUP.md` - For multi-course setup
- `docs/HTTPS-SETUP.md` - For HTTPS configuration

