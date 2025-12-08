# Course Bot Isolation - Confirmed Architecture

## ✅ Each Course Has Complete Isolation

### 1. **Separate Database (ChromaDB)**

Each course creates its **own ChromaDB collection** based on `COURSE_ID`:

```python
# In rag_service.py (line 38)
collection_name = f"course_knowledge_{settings.COURSE_ID}"
```

**Result:**
- ML-101: `course_knowledge_ml101` collection
- 2025HCI: `course_knowledge_hci` collection  
- Blender: `course_knowledge_blender` collection

**Database Location:**
- `2025ML/backend/chroma_db/` → ML-101 database only
- `2025HCI/backend/chroma_db/` → 2025HCI database only
- `2025BlenderUnity3DIntroClass/backend/chroma_db/` → Blender database only

✅ **Complete isolation - no data mixing**

---

### 2. **Separate Knowledge Base**

Each course has its **own knowledge base directory**:

- `2025ML/backend/knowledge_base/` → ML-101 content only
- `2025HCI/backend/knowledge_base/` → 2025HCI content only
- `2025BlenderUnity3DIntroClass/backend/knowledge_base/` → Blender content only

Each `.env` file specifies:
```env
KNOWLEDGE_BASE_PATH=./knowledge_base  # Relative to each backend
```

✅ **Complete isolation - each bot only knows its own content**

---

### 3. **Separate Ingestion Process**

Each course runs its **own ingestion**:

```powershell
# ML-101 ingestion
cd 2025ML/backend
python scripts/load_knowledge_base.py
# → Indexes into course_knowledge_ml101 collection

# 2025HCI ingestion
cd 2025HCI/backend  
python scripts/load_knowledge_base.py
# → Indexes into course_knowledge_hci collection

# Blender ingestion
cd 2025BlenderUnity3DIntroClass/backend
python scripts/load_knowledge_base.py
# → Indexes into course_knowledge_blender collection
```

✅ **Each ingestion is independent and course-specific**

---

### 4. **Separate Backend Instances**

Each course runs on a **different port** with separate processes:

- ML-101: Port 8001 (separate Python process)
- 2025HCI: Port 8002 (separate Python process)
- Blender: Port 8003 (separate Python process)

Each has:
- Separate virtual environment
- Separate `.env` configuration
- Separate logs
- Separate ChromaDB instance
- Separate knowledge base

✅ **Complete runtime isolation**

---

### 5. **Separate Configuration**

Each course has its **own `.env` file** with unique `COURSE_ID`:

**ML-101:**
```env
COURSE_ID=ml101
BACKEND_PORT=8001
CHROMA_DB_PATH=./chroma_db
KNOWLEDGE_BASE_PATH=./knowledge_base
```

**2025HCI:**
```env
COURSE_ID=hci
BACKEND_PORT=8002
CHROMA_DB_PATH=./chroma_db
KNOWLEDGE_BASE_PATH=./knowledge_base
```

**Blender:**
```env
COURSE_ID=blender
BACKEND_PORT=8003
CHROMA_DB_PATH=./chroma_db
KNOWLEDGE_BASE_PATH=./knowledge_base
```

✅ **Each course has independent configuration**

---

## What's Shared (By Design)

### Ollama Model (Shared - Efficient)

All courses share the **same Ollama model instance**:
- **Why:** Model is just the "brain" - doesn't store course knowledge
- **How:** Knowledge comes from each course's isolated ChromaDB
- **Result:** Much more efficient GPU usage (one model vs. three)

**This is correct and efficient!** The model doesn't know about course content - it just processes text. The course-specific knowledge comes from each course's isolated ChromaDB.

---

## Verification

After setup, verify isolation:

```powershell
# Check ML-101 database
cd 2025ML\backend
python -c "import chromadb; c = chromadb.PersistentClient('./chroma_db'); print([col.name for col in c.list_collections()])"
# Output: ['course_knowledge_ml101']

# Check 2025HCI database  
cd ..\..\2025HCI\backend
python -c "import chromadb; c = chromadb.PersistentClient('./chroma_db'); print([col.name for col in c.list_collections()])"
# Output: ['course_knowledge_hci']

# Check Blender database
cd ..\..\2025BlenderUnity3DIntroClass\backend
python -c "import chromadb; c = chromadb.PersistentClient('./chroma_db'); print([col.name for col in c.list_collections()])"
# Output: ['course_knowledge_blender']
```

---

## Summary

✅ **Complete Isolation:**
- Each course has its own ChromaDB collection
- Each course has its own knowledge base directory
- Each course has its own ingestion process
- Each course has its own backend instance
- Each course has its own configuration

✅ **Shared (Efficient):**
- Ollama model instance (efficient - one model serves all)
- PostgreSQL (optional - can be shared with course_id or separate)

✅ **Result:**
- No data leakage between courses
- Each bot only accesses its own course content
- Complete privacy and isolation

**The setup script creates all of this automatically!** 🎯

