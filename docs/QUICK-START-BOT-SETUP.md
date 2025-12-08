# Quick Start: Bot Setup for Existing Courses

## Overview

This guide explains how to add bot functionality to courses that already have their content. The bot system ensures **complete isolation** - each course has its own database, knowledge base, and ingestion process.

---

## Requirements Met

✅ **Each course has its OWN database** (ChromaDB collection: `course_knowledge_{COURSE_ID}`)  
✅ **Each course has its OWN knowledge base** (separate directory)  
✅ **Each course has its OWN ingestion process** (separate script execution)  
✅ **Shared model** (Ollama/llama3.2:latest - efficient GPU usage)

---

## Quick Setup (Automated)

### For 2025BlenderUnity3DIntroClass:

```powershell
cd C:\Users\yuri\OneDrive\Documents\GitHub\2025ML\scripts
.\setup-complete-course-bot.ps1 -CourseId "blender" -CourseName "2025BlenderUnity3DIntroClass" -Port 8003
```

### For 2025HCI:

```powershell
.\setup-complete-course-bot.ps1 -CourseId "hci" -CourseName "2025HCI" -Port 8002
```

### For Both (One Command):

```powershell
.\setup-both-courses.ps1
```

---

## What the Script Does

1. **Creates isolated backend** with:
   - Separate `chroma_db/` directory (course-specific database)
   - Separate `knowledge_base/` directory (course-specific content)
   - Configuration with unique `COURSE_ID`
   - Database collection: `course_knowledge_{COURSE_ID}`

2. **Copies frontend files**:
   - `bot-chat.js` (configured for correct port)
   - Bot CSS styles
   - Bot HTML template

3. **Integrates existing course content**:
   - Scans your course repo for existing content
   - Links/copies to knowledge base
   - Ready for ingestion

4. **Creates documentation**:
   - Step-by-step instructions
   - Isolation verification steps

---

## After Setup: Complete the Process

### Step 1: Verify Content Integration

Check that your existing course content is accessible:
```powershell
Get-ChildItem "2025BlenderUnity3DIntroClass\backend\knowledge_base\course-content" -Recurse
```

### Step 2: Run Course-Specific Ingestion

**This is the course-specific ingestion** - indexes only this course's content:

```powershell
cd 2025BlenderUnity3DIntroClass\backend
.\venv\Scripts\Activate.ps1
python scripts\load_knowledge_base.py
```

**What happens:**
- Scans `knowledge_base\` (course-specific directory)
- Reads all course materials
- Creates embeddings using shared Ollama model
- Indexes into `course_knowledge_blender` collection (course-specific database)
- **Result:** Bot can answer questions about Blender course content only

### Step 3: Verify Database Isolation

```powershell
cd 2025BlenderUnity3DIntroClass\backend
python -c "import chromadb; c = chromadb.PersistentClient('./chroma_db'); print([col.name for col in c.list_collections()])"
```

**Should show:** `['course_knowledge_blender']` (only this course)

### Step 4: Start Backend

```powershell
.\start-backend.ps1
```

### Step 5: Add Bot to Website

1. Copy HTML section from `docs\bot-portal-section.html`
2. Add to your main HTML file
3. Add `<script src="bot-chat.js" defer></script>` to `<head>`

### Step 6: Set Up HTTPS

See: `docs/HTTPS-SETUP.md`

---

## Isolation Verification

After setup, verify each course is isolated:

```powershell
# Check Blender database
cd 2025BlenderUnity3DIntroClass\backend
python -c "import chromadb; c = chromadb.PersistentClient('./chroma_db'); print('Collections:', [col.name for col in c.list_collections()])"
# Output: ['course_knowledge_blender']

# Check HCI database
cd ..\..\2025HCI\backend
python -c "import chromadb; c = chromadb.PersistentClient('./chroma_db'); print('Collections:', [col.name for col in c.list_collections()])"
# Output: ['course_knowledge_hci']

# Check ML-101 database
cd ..\..\2025ML\backend
python -c "import chromadb; c = chromadb.PersistentClient('./chroma_db'); print('Collections:', [col.name for col in c.list_collections()])"
# Output: ['course_knowledge_ml101']
```

Each course has its own collection! ✅

---

## Summary

**What You Get:**
- ✅ Complete isolation (database, knowledge base, ingestion)
- ✅ Automatic integration of existing course content
- ✅ Frontend files ready to use
- ✅ Shared model (efficient)

**What You Do:**
1. Run setup script
2. Run ingestion (one command)
3. Start backend
4. Add bot to website
5. Set up HTTPS

**That's it!** Each course bot is completely isolated and ready to use.

---

See `docs/ISOLATION-CONFIRMED.md` for detailed architecture explanation.

