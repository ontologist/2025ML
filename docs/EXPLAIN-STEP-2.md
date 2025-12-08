# Step 2 Explained: Integrating Existing Course Content

## What is Step 2?

Step 2 is about **connecting your existing course materials** to the bot's knowledge base so the bot can answer questions about your course content.

## What You Already Have

Your courses (2025BlenderUnity3DIntroClass and 2025HCI) already have:
- ✅ Lectures
- ✅ Slides  
- ✅ Assignments
- ✅ Course documentation
- ✅ Curriculum materials
- ✅ Resources

## What the Bot Needs

The bot needs to **index** your existing content into a vector database (ChromaDB) so it can:
- Search through your materials
- Find relevant information
- Answer questions based on your course content

## How It Works

### The Setup Script Does This Automatically:

1. **Scans your course repo** for common directories:
   - `docs/`
   - `lectures/`
   - `assignments/`
   - `curriculum/`
   - `resources/`
   - `activities/`
   - `slides/`

2. **Creates links** (symlinks or copies) from bot's knowledge base to your existing content

3. **Result:** Bot can access all your existing materials without duplicating them

## Directory Structure After Setup

```
2025BlenderUnity3DIntroClass/
├── docs/              ← Your existing docs (untouched)
├── lectures/          ← Your existing lectures (untouched)
├── assignments/       ← Your existing assignments (untouched)
├── curriculum/        ← Your existing curriculum (untouched)
│
└── backend/
    └── knowledge_base/
        ├── course-content/    ← Links to your existing content
        │   ├── docs/          → Symlink to ../docs
        │   ├── lectures/      → Symlink to ../lectures
        │   └── assignments/   → Symlink to ../assignments
        │
        └── assessments/       ← Bot-specific (assessments)
```

## What Happens When You Load Knowledge Base

When you run `python scripts\load_knowledge_base.py`:

1. **Scans** `backend\knowledge_base\` directory (including `course-content\`)
2. **Reads** all your files (.md, .html, .txt, .yaml, .py, .json, .csv)
3. **Splits** into chunks (for better search)
4. **Creates embeddings** (vector representations) using Ollama
5. **Stores** in ChromaDB (vector database)
6. **Result:** Bot can now search and answer questions about your content

## Example: What Bot Can Do After Setup

**Student asks:** "What is the assignment for Week 3?"

**Bot will:**
1. Search your `assignments/` directory
2. Find Week 3 assignment file
3. Retrieve relevant content
4. Answer: "The Week 3 assignment is about [content from your assignment file]..."

## Manual Setup (If Script Doesn't Work)

If automatic linking doesn't work, you have 3 options:

### Option 1: Update Knowledge Base Path (Simplest)

Edit `backend\.env`:
```env
KNOWLEDGE_BASE_PATH=../docs
```

This tells the bot to look directly in your `docs/` folder.

### Option 2: Copy Content (Safest)

Copy your existing content to knowledge base:
```powershell
cd 2025BlenderUnity3DIntroClass\backend

# Copy your existing content
Copy-Item "..\docs\*" -Destination "knowledge_base\docs\" -Recurse
Copy-Item "..\lectures\*" -Destination "knowledge_base\lectures\" -Recurse
Copy-Item "..\assignments\*" -Destination "knowledge_base\assignments\" -Recurse
```

### Option 3: Modify Loader Script

Edit `backend\scripts\load_knowledge_base.py` to add multiple paths:
```python
# Add your existing content directories
knowledge_base_paths = [
    "../docs",
    "../lectures", 
    "../assignments",
    "./knowledge_base"  # Bot-specific resources
]
```

## Verification

After loading knowledge base, check:

1. **Logs show your files:**
   ```
   Loaded 150 documents
   Split into 2000 text chunks
   ```

2. **Test bot:**
   Ask: "What topics are covered in Week 1?"
   Bot should answer based on your existing course materials

3. **Check ChromaDB:**
   Files in `backend\chroma_db\` indicate successful indexing

## Summary

**Step 2 = Connect bot to your existing course content**

- ✅ Your content stays where it is
- ✅ Bot creates links or copies to access it
- ✅ Bot indexes it into searchable database
- ✅ Bot can now answer questions about your course

**You don't need to:**
- ❌ Move your existing files
- ❌ Reorganize your structure
- ❌ Duplicate content (unless you want to)

**You just need to:**
- ✅ Point bot to your content (script does this automatically)
- ✅ Load knowledge base (one command)
- ✅ Bot is ready!

---

**Next:** Step 3 - Load the knowledge base (indexes all your content)

