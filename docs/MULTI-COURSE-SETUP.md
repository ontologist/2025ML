# Multi-Course Bot Setup Guide

## Overview

You have 3 courses, each with its own GitHub repository and GitHub Pages:
- **Course 1 (ML-101):** `2025ML` repo → Port 8001
- **Course 2 (2025HCI):** `2025HCI` repo → Port 8002  
- **Course 3 (2025BlenderUnity3DIntroClass):** `2025BlenderUnity3DIntroClass` repo → Port 8003

## Architecture

```
┌─────────────────────────────────────────┐
│  Your Windows Machine (192.218.175.132) │
│                                          │
│  ┌──────────────────────────────────┐   │
│  │  Shared Ollama (Port 11434)      │   │
│  │  Model: llama3.2:latest          │   │
│  └──────────────────────────────────┘   │
│                                          │
│  ┌──────────────┐  ┌──────────────┐     │
│  │ Backend 8001 │  │ Backend 8002 │     │
│  │ Course: ml101│  │ Course: [ID] │     │
│  │ KB: ml101    │  │ KB: [name]  │     │
│  └──────────────┘  └──────────────┘     │
│                                          │
│  ┌──────────────┐                       │
│  │ Backend 8003 │                       │
│  │ Course: [ID] │                       │
│  │ KB: [name]  │                       │
│  └──────────────┘                       │
└─────────────────────────────────────────┘
           │              │              │
           ▼              ▼              ▼
    GitHub Pages   GitHub Pages   GitHub Pages
    (2025ML repo)   (Course 2)     (Course 3)
```

## Step 1: Set Up Backend for Course 2

### Option A: Copy Current Backend (Recommended)

1. **Copy the backend directory:**
   ```powershell
   # Navigate to your project root
   cd C:\Users\yuri\OneDrive\Documents\GitHub
   
   # Copy the backend from ML-101 to a new location
   Copy-Item -Path "2025ML\backend" -Destination "course2-backend" -Recurse
   ```

2. **Create `.env` file for Course 2:**
   ```powershell
   cd course2-backend
   @"
   COURSE_ID=course2
   COURSE_NAME=Course 2 Name
   BACKEND_PORT=8002
   OLLAMA_MODEL=llama3.2:latest
   OLLAMA_BASE_URL=http://localhost:11434
   GITHUB_PAGES_URL=https://your-username.github.io/course2-repo/
   CHROMA_DB_PATH=./chroma_db
   KNOWLEDGE_BASE_PATH=./knowledge_base
   DATABASE_URL=postgresql://ml101bot:ml101bot_password@localhost:5432/ml101bot
   REDIS_URL=redis://localhost:6379
   "@ | Out-File -FilePath ".env" -Encoding UTF8
   ```

3. **Update config.py (or use .env):**
   - Set `COURSE_ID` to your course ID (e.g., "course2")
   - Set `BACKEND_PORT` to 8002
   - Update `GITHUB_PAGES_URL` to your Course 2's GitHub Pages URL

4. **Copy course materials to knowledge base:**
   ```powershell
   # Copy your Course 2 materials
   # Adjust paths as needed
   Copy-Item -Path "C:\path\to\course2\materials" -Destination ".\knowledge_base" -Recurse
   ```

5. **Load knowledge base:**
   ```powershell
   .\venv\Scripts\Activate.ps1
   python scripts\load_knowledge_base.py
   ```

### Option B: Use Environment Variables (Cleaner)

1. **Create a new backend directory structure:**
   ```powershell
   mkdir course2-backend
   cd course2-backend
   
   # Copy only the app directory and requirements
   Copy-Item -Path "..\2025ML\backend\app" -Destination "." -Recurse
   Copy-Item -Path "..\2025ML\backend\requirements.txt" -Destination "."
   Copy-Item -Path "..\2025ML\backend\scripts" -Destination "." -Recurse
   
   # Create virtual environment
   python -m venv venv
   .\venv\Scripts\Activate.ps1
   pip install -r requirements.txt
   ```

2. **Create `.env` file** (same as Option A, step 2)

3. **The config.py will automatically read from .env** - no code changes needed!

## Step 2: Set Up Backend for Course 3

Repeat Step 1 with:
- Port: 8003
- Course ID: course3 (or your course ID)
- Knowledge base: course3 materials

## Step 3: Start All Backend Instances

Open 3 separate PowerShell windows:

**Window 1 (ML-101):**
```powershell
cd C:\Users\yuri\OneDrive\Documents\GitHub\2025ML\backend
.\venv\Scripts\Activate.ps1
python -m uvicorn app.main:app --host 0.0.0.0 --port 8001 --reload
```

**Window 2 (Course 2):**
```powershell
cd C:\Users\yuri\OneDrive\Documents\GitHub\course2-backend
.\venv\Scripts\Activate.ps1
python -m uvicorn app.main:app --host 0.0.0.0 --port 8002 --reload
```

**Window 3 (Course 3):**
```powershell
cd C:\Users\yuri\OneDrive\Documents\GitHub\course3-backend
.\venv\Scripts\Activate.ps1
python -m uvicorn app.main:app --host 0.0.0.0 --port 8003 --reload
```

## Step 4: Configure Frontends (GitHub Pages)

Each GitHub Pages frontend needs to point to its respective backend.

### For Course 2 Repository:

1. **Copy the bot chat files** from ML-101 repo:
   - `docs/bot-chat.js`
   - Update the `getApiUrl()` function to use Course 2's backend

2. **Update `bot-chat.js` in Course 2 repo:**
   ```javascript
   getApiUrl() {
       const isLocal = window.location.hostname === 'localhost';
       const isHttps = window.location.protocol === 'https:';
       
       if (isLocal) {
           return 'http://localhost:8002/api'; // Course 2 port
       } else if (isHttps) {
           return 'https://YOUR_NGROK_URL_2/api'; // See Step 5
       } else {
           return 'http://192.218.175.132:8002/api';
       }
   }
   ```

3. **Repeat for Course 3** (use port 8003)

## Step 5: Set Up HTTPS for All 3 Bots

### Option A: Multiple ngrok Tunnels (Free Tier Limitation)

**Problem:** Free ngrok only allows 1 tunnel at a time.

**Solution:** Use ngrok paid plan ($8/month) for multiple static domains, OR use Cloudflare Tunnel (free).

### Option B: Cloudflare Tunnel (Recommended - FREE)

Cloudflare Tunnel can expose multiple local ports through different subdomains:

1. **Install Cloudflare Tunnel** (if not already installed):
   ```powershell
   winget install --id Cloudflare.cloudflared
   ```

2. **Create config file:**
   ```powershell
   # Create config directory
   New-Item -ItemType Directory -Force -Path "$env:USERPROFILE\.cloudflared"
   
   # Create config (replace with your domain and tunnel IDs)
   @"
   tunnel: YOUR_TUNNEL_ID
   credentials-file: $env:USERPROFILE\.cloudflared\YOUR_TUNNEL_ID.json
   
   ingress:
     - hostname: ml101bot.yourdomain.com
       service: http://localhost:8001
     - hostname: course2bot.yourdomain.com
       service: http://localhost:8002
     - hostname: course3bot.yourdomain.com
       service: http://localhost:8003
     - service: http_status:404
   "@ | Out-File -FilePath "$env:USERPROFILE\.cloudflared\config.yml" -Encoding UTF8
   ```

3. **Set up DNS records** in Cloudflare for each subdomain

4. **Start tunnel:**
   ```powershell
   cloudflared tunnel run YOUR_TUNNEL_NAME
   ```

5. **Update frontend `bot-chat.js` files:**
   - Course 1: `https://ml101bot.yourdomain.com/api`
   - Course 2: `https://course2bot.yourdomain.com/api`
   - Course 3: `https://course3bot.yourdomain.com/api`

### Option C: Use ngrok Paid Plan

If you upgrade to ngrok paid ($8/month):
- You get static domains
- Can run multiple tunnels
- Each course gets its own permanent URL

## Step 6: Firewall Configuration

Open ports 8002 and 8003 in Windows Firewall:

```powershell
# Run as Administrator
New-NetFirewallRule -DisplayName "ML-101 Course 2 Bot Port 8002" -Direction Inbound -LocalPort 8002 -Protocol TCP -Action Allow
New-NetFirewallRule -DisplayName "ML-101 Course 3 Bot Port 8003" -Direction Inbound -LocalPort 8003 -Protocol TCP -Action Allow
```

## Step 7: Test Each Bot

1. **Test Course 1 (ML-101):**
   ```powershell
   curl http://localhost:8001/health
   ```

2. **Test Course 2:**
   ```powershell
   curl http://localhost:8002/health
   ```

3. **Test Course 3:**
   ```powershell
   curl http://localhost:8003/health
   ```

## Quick Reference

| Course | Port | Course ID | Knowledge Base | GitHub Pages |
|--------|------|-----------|----------------|--------------|
| ML-101 | 8001 | ml101 | `2025ML/backend/knowledge_base` | `ontologist.github.io/2025ML` |
| 2025HCI | 8002 | hci | `2025HCI/backend/knowledge_base` | `ontologist.github.io/2025HCI` |
| 2025BlenderUnity3DIntroClass | 8003 | blender | `2025BlenderUnity3DIntroClass/backend/knowledge_base` | `ontologist.github.io/2025BlenderUnity3DIntroClass` |

## Tips

1. **Shared Resources:**
   - All 3 bots share the same Ollama instance (port 11434)
   - All 3 bots share the same PostgreSQL database
   - Each bot has isolated knowledge base (separate ChromaDB collections)

2. **Resource Usage:**
   - GPU: ~6GB VRAM (shared llama3.2 model)
   - RAM: ~2GB per backend = ~6GB total
   - Storage: Depends on knowledge base size

3. **Starting All Services:**
   - Create a PowerShell script to start all 3 backends at once
   - Or use a process manager like PM2 for Node.js (but Python equivalent)

4. **Monitoring:**
   - Check logs: `backend\logs\app.log` (each backend has its own)
   - Health checks: `http://localhost:800X/health`

## Troubleshooting

**Problem:** Port already in use
- Solution: Make sure only one backend is using each port

**Problem:** Wrong knowledge base showing
- Solution: Check `COURSE_ID` in `.env` file matches the knowledge base

**Problem:** Mixed content error on GitHub Pages
- Solution: Make sure HTTPS URL is configured in `bot-chat.js`

**Problem:** Slow responses
- Solution: Check if Ollama is running and model is loaded

---

**Need help?** Check the individual setup guides:
- `docs/NGROK-SETUP-STEPS.md` - ngrok setup
- `backend/CLOUDFLARE-TUNNEL-SETUP.md` - Cloudflare Tunnel setup

