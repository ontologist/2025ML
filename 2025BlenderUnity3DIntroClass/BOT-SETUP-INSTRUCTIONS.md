# Bot Integration Instructions for 2025BlenderUnity3DIntroClass

## Setup Complete! 笨・n
Your bot backend and frontend files have been set up with complete course isolation.

## Isolation Guarantees

### 笨・Course-Specific Database
ChromaDB Location: 2025BlenderUnity3DIntroClass\backend\chroma_db\
Collection Name: course_knowledge_blender
Isolation: This database is completely separate from other courses
No Data Mixing: Each course content is stored in its own collection

### 笨・Course-Specific Knowledge Base
Location: 2025BlenderUnity3DIntroClass\backend\knowledge_base\
Isolation: This knowledge base is completely separate from other courses
Content: Only contains 2025BlenderUnity3DIntroClass course materials

### 笨・Course-Specific Ingestion Process
Script: 2025BlenderUnity3DIntroClass\backend\scripts\load_knowledge_base.py
Isolation: Each course runs its own ingestion independently
Result: Indexes only 2025BlenderUnity3DIntroClass content into course_knowledge_blender collection

### 笨・Course-Specific Backend Instance
Port: 8003
Process: Separate Python process
Configuration: 2025BlenderUnity3DIntroClass\backend\.env with COURSE_ID=blender
Isolation: Complete runtime isolation

### 笨・Shared Model (Efficient)
Model: Ollama/llama3.2:latest
Shared: All courses use the same model instance (efficient GPU usage)
Why: Model does not store course knowledge - knowledge comes from isolated ChromaDB

## Backend Setup
Location: 2025BlenderUnity3DIntroClass\backend\
Port: 8003
Course ID: blender
Database Collection: course_knowledge_blender

## Next Steps:

### 1. Verify Course Content Integration

The script has automatically linked your existing course content to the knowledge base.

Check: 2025BlenderUnity3DIntroClass\backend\knowledge_base\course-content\

Your existing content should be accessible there as symlinks or copies.

Important: This content will be indexed into the course-specific database course_knowledge_blender.

If content is missing: Manually copy your course materials to:
2025BlenderUnity3DIntroClass\backend\knowledge_base\course-content\

Or update .env to point directly to your content:
KNOWLEDGE_BASE_PATH=../docs

### 2. Load Knowledge Base (Course-Specific Ingestion)

This is the course-specific ingestion process - it will index ONLY 2025BlenderUnity3DIntroClass content:

cd 2025BlenderUnity3DIntroClass\backend
.\venv\Scripts\Activate.ps1
python scripts\load_knowledge_base.py

What happens:
1. Scans knowledge_base directory (course-specific)
2. Reads all course materials
3. Creates embeddings using shared Ollama model
4. Indexes into course_knowledge_blender collection (course-specific database)
5. Result: Bot can answer questions about 2025BlenderUnity3DIntroClass content only

### 3. Verify Database Isolation

After loading, verify the database is isolated:

cd 2025BlenderUnity3DIntroClass\backend
Run Python command to verify collections

Should show: course_knowledge_blender (only this course collection)

### 4. Start Backend Server

cd 2025BlenderUnity3DIntroClass\backend
.\start-backend.ps1

Or manually:
cd 2025BlenderUnity3DIntroClass\backend
.\venv\Scripts\Activate.ps1
python -m uvicorn app.main:app --host 0.0.0.0 --port 8003 --reload

### 5. Configure Firewall

Run PowerShell as Administrator:
New-NetFirewallRule -DisplayName "2025BlenderUnity3DIntroClass Bot Port 8003" -Direction Inbound -LocalPort 8003 -Protocol TCP -Action Allow

### 6. Add Bot to Your Website

1. Copy bot HTML section from docs\bot-portal-section.html into your main HTML file
2. Add script tag to HTML head section: script src=bot-chat.js defer
3. Add navigation link (optional): link to #bot-portal with text 2025BlenderUnity3DIntroClass Bot

### 7. Set Up HTTPS (Required for GitHub Pages)

See: docs/HTTPS-SETUP.md or use Cloudflare Tunnel (recommended)

Once you have HTTPS URL, update it in docs\bot-chat.js

## Files Created:

Backend: 2025BlenderUnity3DIntroClass\backend\ (isolated)
Database: 2025BlenderUnity3DIntroClass\backend\chroma_db\ (isolated, course_knowledge_blender collection)
Knowledge Base: 2025BlenderUnity3DIntroClass\backend\knowledge_base\ (isolated)
Frontend: 2025BlenderUnity3DIntroClass\docs\bot-chat.js
CSS: 2025BlenderUnity3DIntroClass\docs\styles.css (bot styles included)
HTML Template: 2025BlenderUnity3DIntroClass\docs\bot-portal-section.html

## Testing:

1. Start backend: cd 2025BlenderUnity3DIntroClass\backend; .\start-backend.ps1
2. Test locally: Open your HTML file and try the bot
3. Test API: curl http://localhost:8003/health
4. Verify isolation: Bot should only know about 2025BlenderUnity3DIntroClass content

## Need Help?

- See docs/ISOLATION-CONFIRMED.md for isolation architecture details
- See docs/CREATE-CONVERSATIONAL-ASSESSMENTS.md for assessment setup
- See docs/MULTI-COURSE-SETUP.md for multi-course guide

