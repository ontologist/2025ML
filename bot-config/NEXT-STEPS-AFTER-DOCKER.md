# Next Steps After Docker Desktop Installation
# Docker Desktop インストール後の次のステップ

**Date:** January 2025  
**Status:** Docker Desktop Installed ✅

---

## Immediate Next Steps | 次の即座のステップ

### 1. Start Docker Desktop | Docker Desktopを起動

**IMPORTANT:** Docker Desktop must be running before proceeding!

**重要:** Docker Desktopを起動してから続行してください！

1. **Open Docker Desktop application**
   - Look for Docker Desktop in your Start menu
   - Click to launch it
   - Wait for it to fully start (whale icon in system tray should be steady)

2. **Verify Docker is running:**
   ```powershell
   docker ps
   ```
   If you see an empty table (no error), Docker is ready!

3. **If you see an error:**
   - Make sure Docker Desktop is fully started
   - Wait 30-60 seconds after opening Docker Desktop
   - Try again: `docker ps`

---

### 2. Set Up PostgreSQL and Redis | PostgreSQLとRedisのセットアップ

Once Docker Desktop is running, start the database services:

```powershell
# Navigate to your project directory
cd C:\Users\yuri\OneDrive\Documents\GitHub\2025ML

# Start PostgreSQL and Redis containers
docker-compose up -d
```

**What this does:**
- ✅ Starts PostgreSQL database (port 5432)
- ✅ Starts Redis cache (port 6379)
- ✅ Creates persistent data volumes
- ✅ Runs in background (`-d` flag)

**Verify containers are running:**
```powershell
docker ps
```

You should see:
- `ml101-postgres` container running
- `ml101-redis` container running

---

### 3. Continue with Bot Installation | ボットインストールの続行

After Docker containers are running, you can continue with the full installation:

**Option A: Run the automated installation script** (Recommended)

```powershell
# Run PowerShell as Administrator
cd C:\Users\yuri\OneDrive\Documents\GitHub\2025ML\bot-config
.\install-windows.ps1 `
    -CourseId "ml101" `
    -BackendPort 8001 `
    -FrontendPort 3001 `
    -ModelName "qwen2.5:72b" `
    -FixedIP "YOUR_IP_ADDRESS" `
    -DownloadFromGitHub `
    -DownloadGitHubPages
```

**Option B: Manual setup** (if you prefer step-by-step control)

Follow Phase 1 of the implementation plan:
- Install Ollama
- Download model
- Set up Python environment
- Configure backend

---

### 4. Quick Test | クイックテスト

After starting containers, test the database connection:

```powershell
# Test PostgreSQL connection
docker exec -it ml101-postgres psql -U ml101bot -d ml101bot -c "SELECT version();"

# Test Redis connection
docker exec -it ml101-redis redis-cli ping
```

Expected output:
- PostgreSQL: Shows PostgreSQL version
- Redis: Returns `PONG`

---

## Troubleshooting | トラブルシューティング

### Docker Desktop Not Starting

**Symptoms:**
- Error: "The system cannot find the file specified"
- `docker ps` fails
- Docker Desktop icon shows error

**Solutions:**
1. **Restart Docker Desktop:**
   - Right-click Docker Desktop icon in system tray
   - Click "Restart"
   - Wait 30-60 seconds

2. **Check WSL2 (if using WSL2 backend):**
   ```powershell
   wsl --status
   ```
   If WSL2 is not installed, Docker Desktop will prompt you to install it.

3. **Check Windows Features:**
   - Open "Turn Windows features on or off"
   - Ensure "Virtual Machine Platform" is enabled
   - Restart if you made changes

### Port Already in Use

**Symptoms:**
- Error: "port is already allocated"
- Containers fail to start

**Solutions:**
1. **Check what's using the port:**
   ```powershell
   netstat -ano | findstr :5432
   netstat -ano | findstr :6379
   ```

2. **Stop existing containers:**
   ```powershell
   docker-compose down
   ```

3. **Change ports in docker-compose.yml** (if needed):
   ```yaml
   ports:
     - "5433:5432"  # Change external port
   ```

### Containers Keep Stopping

**Symptoms:**
- Containers start then stop immediately
- `docker ps -a` shows "Exited" status

**Solutions:**
1. **Check container logs:**
   ```powershell
   docker logs ml101-postgres
   docker logs ml101-redis
   ```

2. **Check Docker Desktop resources:**
   - Open Docker Desktop
   - Settings → Resources
   - Ensure enough memory allocated (at least 4GB)

---

## What's Next After This? | この後の次のステップ

Once Docker is working and containers are running:

1. ✅ **Install Ollama** (if not already installed)
   - Download from: https://ollama.com/download/windows
   - Verify GPU detection

2. ✅ **Download Model**
   - For RTX 4090: `ollama pull qwen2.5:72b`
   - Or faster: `ollama pull qwen2.5:7b`

3. ✅ **Set Up Python Environment**
   - Create virtual environment
   - Install dependencies from requirements.txt

4. ✅ **Load Knowledge Base**
   - Clone course repository
   - Index documents into RAG system

5. ✅ **Start Backend Server**
   - Run FastAPI application
   - Test API endpoints

---

## Quick Reference Commands | クイックリファレンスコマンド

```powershell
# Start containers
docker-compose up -d

# Stop containers
docker-compose down

# View running containers
docker ps

# View all containers (including stopped)
docker ps -a

# View container logs
docker logs ml101-postgres
docker logs ml101-redis

# Access PostgreSQL shell
docker exec -it ml101-postgres psql -U ml101bot -d ml101bot

# Access Redis shell
docker exec -it ml101-redis redis-cli

# Remove everything (including volumes)
docker-compose down -v
```

---

## Status Checklist | ステータスチェックリスト

- [ ] Docker Desktop installed ✅
- [ ] Docker Desktop running
- [ ] `docker ps` works (no errors)
- [ ] PostgreSQL container running (`ml101-postgres`)
- [ ] Redis container running (`ml101-redis`)
- [ ] Database connection test successful
- [ ] Ready to continue with Ollama installation

---

**Next Action:** Start Docker Desktop and run `docker-compose up -d`

**次のアクション:** Docker Desktopを起動して `docker-compose up -d` を実行してください

