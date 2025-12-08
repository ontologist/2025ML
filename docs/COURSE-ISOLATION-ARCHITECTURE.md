# Course Bot Isolation Architecture

## Overview

Each course bot is **completely isolated** with its own:
- ✅ **Database** (ChromaDB collection)
- ✅ **Knowledge Base** (course-specific documents)
- ✅ **Ingestion Process** (separate indexing)
- ✅ **Backend Instance** (separate server on different port)
- ✅ **Configuration** (course-specific settings)

## Isolation Guarantees

### 1. Database Isolation

Each course has its **own ChromaDB collection**:

- **ML-101:** Collection name: `course_knowledge_ml101`
- **2025HCI:** Collection name: `course_knowledge_hci`  
- **2025BlenderUnity3DIntroClass:** Collection name: `course_knowledge_blender`

**How it works:**
```python
# In rag_service.py
collection_name = f"course_knowledge_{settings.COURSE_ID}"
```

Each backend creates its own collection based on `COURSE_ID` in `.env` file.

**Database location:**
- `2025ML/backend/chroma_db/` → ML-101 database
- `2025HCI/backend/chroma_db/` → 2025HCI database
- `2025BlenderUnity3DIntroClass/backend/chroma_db/` → Blender database

**Result:** Complete data isolation - no cross-contamination between courses.

---

### 2. Knowledge Base Isolation

Each course has its **own knowledge base directory**:

- **ML-101:** `2025ML/backend/knowledge_base/`
- **2025HCI:** `2025HCI/backend/knowledge_base/`
- **2025BlenderUnity3DIntroClass:** `2025BlenderUnity3DIntroClass/backend/knowledge_base/`

**How it works:**
- Each backend's `.env` file specifies: `KNOWLEDGE_BASE_PATH=./knowledge_base`
- This is relative to each backend directory
- Results in completely separate knowledge bases

**Result:** Each bot only knows about its own course content.

---

### 3. Ingestion Process Isolation

Each course has its **own ingestion process**:

```powershell
# ML-101 ingestion
cd 2025ML/backend
python scripts/load_knowledge_base.py
# Indexes ML-101 content into course_knowledge_ml101 collection

# 2025HCI ingestion  
cd 2025HCI/backend
python scripts/load_knowledge_base.py
# Indexes 2025HCI content into course_knowledge_hci collection

# Blender ingestion
cd 2025BlenderUnity3DIntroClass/backend
python scripts/load_knowledge_base.py
# Indexes Blender content into course_knowledge_blender collection
```

**Result:** Each course's documents are indexed separately into their own collections.

---

### 4. Backend Instance Isolation

Each course runs its **own backend server**:

- **ML-101:** Port 8001 → `http://localhost:8001`
- **2025HCI:** Port 8002 → `http://localhost:8002`
- **2025BlenderUnity3DIntroClass:** Port 8003 → `http://localhost:8003`

**How it works:**
- Separate Python processes
- Separate virtual environments
- Separate configuration files (`.env`)
- Separate logs

**Result:** Complete runtime isolation - no shared state.

---

### 5. Configuration Isolation

Each course has its **own `.env` file**:

**ML-101 (`2025ML/backend/.env`):**
```env
COURSE_ID=ml101
COURSE_NAME=ML-101 Machine Learning and Intelligence
BACKEND_PORT=8001
CHROMA_DB_PATH=./chroma_db
KNOWLEDGE_BASE_PATH=./knowledge_base
```

**2025HCI (`2025HCI/backend/.env`):**
```env
COURSE_ID=hci
COURSE_NAME=2025HCI
BACKEND_PORT=8002
CHROMA_DB_PATH=./chroma_db
KNOWLEDGE_BASE_PATH=./knowledge_base
```

**2025BlenderUnity3DIntroClass (`2025BlenderUnity3DIntroClass/backend/.env`):**
```env
COURSE_ID=blender
COURSE_NAME=2025BlenderUnity3DIntroClass
BACKEND_PORT=8003
CHROMA_DB_PATH=./chroma_db
KNOWLEDGE_BASE_PATH=./knowledge_base
```

**Result:** Each course has completely independent configuration.

---

## Shared Resources (By Design)

### Ollama Model (Shared)

All courses **share the same Ollama model instance**:

- **Model:** `llama3.2:latest` (or whatever you configure)
- **Location:** `http://localhost:11434` (single Ollama server)
- **Why:** Efficient GPU usage - one model serves all courses

**This is intentional and efficient:**
- Model is just the "brain" - it doesn't store course-specific knowledge
- Knowledge comes from each course's isolated ChromaDB
- Much more efficient than running 3 separate models

### PostgreSQL (Optional - Shared)

If you use PostgreSQL for analytics:
- **Shared database** with `course_id` column for separation
- Each course's data is isolated by `course_id` filter
- Or you can use separate databases if preferred

---

## Architecture Diagram

```
┌─────────────────────────────────────────────────────────┐
│  Your Windows Machine                                    │
│                                                           │
│  ┌─────────────────────────────────────────────────┐    │
│  │  Shared Ollama (Port 11434)                     │    │
│  │  Model: llama3.2:latest                         │    │
│  │  (Shared by all courses - efficient GPU usage)   │    │
│  └─────────────────────────────────────────────────┘    │
│                                                           │
│  ┌──────────────────┐  ┌──────────────────┐            │
│  │ ML-101 Backend   │  │ 2025HCI Backend   │            │
│  │ Port: 8001       │  │ Port: 8002       │            │
│  │                  │  │                  │            │
│  │ ChromaDB:        │  │ ChromaDB:        │            │
│  │ course_knowledge_│  │ course_knowledge_│            │
│  │   ml101          │  │   hci            │            │
│  │                  │  │                  │            │
│  │ Knowledge Base:  │  │ Knowledge Base:  │            │
│  │ ./knowledge_base │  │ ./knowledge_base │            │
│  └──────────────────┘  └──────────────────┘            │
│                                                           │
│  ┌──────────────────┐                                   │
│  │ Blender Backend   │                                   │
│  │ Port: 8003       │                                   │
│  │                  │                                   │
│  │ ChromaDB:        │                                   │
│  │ course_knowledge_│                                   │
│  │   blender        │                                   │
│  │                  │                                   │
│  │ Knowledge Base:  │                                   │
│  │ ./knowledge_base │                                   │
│  └──────────────────┘                                   │
└─────────────────────────────────────────────────────────┘
```

---

## Verification: Check Isolation

### Verify Database Isolation

```powershell
# Check ML-101 database
cd 2025ML\backend
python -c "import chromadb; client = chromadb.PersistentClient('./chroma_db'); print(client.list_collections())"
# Should show: ['course_knowledge_ml101']

# Check 2025HCI database
cd ..\..\2025HCI\backend
python -c "import chromadb; client = chromadb.PersistentClient('./chroma_db'); print(client.list_collections())"
# Should show: ['course_knowledge_hci']

# Check Blender database
cd ..\..\2025BlenderUnity3DIntroClass\backend
python -c "import chromadb; client = chromadb.PersistentClient('./chroma_db'); print(client.list_collections())"
# Should show: ['course_knowledge_blender']
```

### Verify Knowledge Base Isolation

```powershell
# Check ML-101 knowledge base
Get-ChildItem 2025ML\backend\knowledge_base -Recurse -File | Measure-Object
# Shows ML-101 files only

# Check 2025HCI knowledge base
Get-ChildItem 2025HCI\backend\knowledge_base -Recurse -File | Measure-Object
# Shows 2025HCI files only

# Check Blender knowledge base
Get-ChildItem 2025BlenderUnity3DIntroClass\backend\knowledge_base -Recurse -File | Measure-Object
# Shows Blender files only
```

### Verify Configuration Isolation

```powershell
# Check ML-101 config
Get-Content 2025ML\backend\.env | Select-String "COURSE_ID"
# Should show: COURSE_ID=ml101

# Check 2025HCI config
Get-Content 2025HCI\backend\.env | Select-String "COURSE_ID"
# Should show: COURSE_ID=hci

# Check Blender config
Get-Content 2025BlenderUnity3DIntroClass\backend\.env | Select-String "COURSE_ID"
# Should show: COURSE_ID=blender
```

---

## Summary

✅ **Each course bot is completely isolated:**
- Separate database (ChromaDB collection)
- Separate knowledge base directory
- Separate ingestion process
- Separate backend instance
- Separate configuration

✅ **Shared resources (by design):**
- Ollama model (efficient - one model serves all)
- PostgreSQL (optional - shared with course_id separation)

✅ **Result:**
- No data leakage between courses
- Each bot only knows its own course content
- Complete isolation and privacy
- Efficient resource usage

---

## File Structure

```
C:\Users\yuri\OneDrive\Documents\GitHub\
├── 2025ML\                          ← ML-101 Course
│   └── backend\
│       ├── .env                     (COURSE_ID=ml101)
│       ├── chroma_db\               (ML-101 database)
│       ├── knowledge_base\          (ML-101 content)
│       └── app\
│
├── 2025HCI\                         ← 2025HCI Course
│   └── backend\
│       ├── .env                     (COURSE_ID=hci)
│       ├── chroma_db\               (2025HCI database)
│       ├── knowledge_base\          (2025HCI content)
│       └── app\
│
└── 2025BlenderUnity3DIntroClass\     ← Blender Course
    └── backend\
        ├── .env                     (COURSE_ID=blender)
        ├── chroma_db\               (Blender database)
        ├── knowledge_base\          (Blender content)
        └── app\
```

Each is completely independent! 🎯

