# Running FastAPI with SSL Directly (No Reverse Proxy)

Since you can't install a reverse proxy, we'll configure FastAPI/Uvicorn to use HTTPS directly with your No-IP certificate.

## Prerequisites

- Your No-IP wildcard certificate files:
  - Certificate file (`.crt` or `.pem`)
  - Private key file (`.key`)
- Domain: `tijerino.ddns.net` (or subdomain like `ml101bot.tijerino.ddns.net`)

## Step-by-Step Setup

### Step 1: Locate Your Certificate Files

Find where your No-IP certificate files are stored. Common locations:
- `C:\Users\yuri\Documents\certificates\`
- `C:\Program Files\No-IP\certificates\`
- Or check your No-IP client configuration

You need:
- Certificate file: `*.crt` or `*.pem`
- Private key file: `*.key`

### Step 2: Copy Certificate Files to Backend Directory

```powershell
# Create certificates directory in backend
New-Item -ItemType Directory -Force -Path "backend\certificates"

# Copy your certificate files (adjust paths as needed)
Copy-Item "C:\path\to\your\certificate.crt" -Destination "backend\certificates\cert.crt"
Copy-Item "C:\path\to\your\private.key" -Destination "backend\certificates\key.key"
```

### Step 3: Update Backend Configuration

Create or update `backend/start_ssl.py`:

```python
"""Start FastAPI server with SSL support."""
import uvicorn
from app.core.config import settings
import os
from pathlib import Path

# Certificate paths
cert_dir = Path(__file__).parent / "certificates"
cert_file = cert_dir / "cert.crt"
key_file = cert_dir / "key.key"

# Check if certificates exist
if not cert_file.exists() or not key_file.exists():
    print(f"❌ Certificate files not found!")
    print(f"   Expected: {cert_file}")
    print(f"   Expected: {key_file}")
    print(f"\nPlease copy your certificate files to: backend/certificates/")
    exit(1)

if __name__ == "__main__":
    uvicorn.run(
        "app.main:app",
        host="0.0.0.0",
        port=443,  # HTTPS uses port 443
        ssl_keyfile=str(key_file),
        ssl_certfile=str(cert_file),
        reload=False  # Disable reload for production
    )
```

### Step 4: Update Firewall for Port 443

```powershell
# Allow HTTPS (port 443)
New-NetFirewallRule -DisplayName "ML-101 Bot HTTPS" -Direction Inbound -LocalPort 443 -Protocol TCP -Action Allow
```

### Step 5: Create No-IP Hostname (if needed)

1. Go to: https://www.noip.com/members/dns/
2. Create hostname: `ml101bot` (or your preferred name)
3. Point to your IP: `192.218.175.132` (or auto-detect)

### Step 6: Start Backend with SSL

```powershell
cd backend
.\venv\Scripts\Activate.ps1
python start_ssl.py
```

### Step 7: Test HTTPS Endpoint

```powershell
Invoke-WebRequest -Uri "https://ml101bot.tijerino.ddns.net/health" -UseBasicParsing
```

Should return: `{"status":"healthy","ollama":"healthy","course_id":"ml101"}`

### Step 8: Update Frontend

Edit `docs/bot-chat.js`, line 34:

```javascript
return 'https://ml101bot.tijerino.ddns.net/api';
```

### Step 9: Deploy

```powershell
git add docs/bot-chat.js backend/start_ssl.py
git commit -m "Add SSL support for No-IP domain"
git push origin main
```

---

## Alternative: Use Different Port (if 443 requires admin)

If port 443 requires admin privileges, use a custom port:

### Updated `start_ssl.py`:

```python
uvicorn.run(
    "app.main:app",
    host="0.0.0.0",
    port=8443,  # Use custom HTTPS port
    ssl_keyfile=str(key_file),
    ssl_certfile=str(cert_file),
)
```

### Update Frontend:

```javascript
return 'https://ml101bot.tijerino.ddns.net:8443/api';
```

---

## Troubleshooting

### Certificate Errors
- Verify certificate file paths are correct
- Check certificate is valid for `*.tijerino.ddns.net`
- Ensure certificate hasn't expired
- Verify private key matches certificate

### Port Already in Use
```powershell
# Check what's using port 443
netstat -ano | findstr :443

# Or use port 8443 instead
```

### Permission Denied
- Port 443 may require admin privileges
- Use port 8443 or higher instead
- Or run PowerShell as Administrator

### DNS Not Resolving
- Check No-IP client is running
- Verify hostname is active
- Wait a few minutes for DNS propagation

---

## Notes

- **Port 443:** Standard HTTPS port (may require admin)
- **Port 8443:** Alternative HTTPS port (usually doesn't require admin)
- **Certificate:** Must be valid for your subdomain
- **No-IP Client:** Keep running to update DNS

---

**This solution runs SSL directly in FastAPI - no reverse proxy needed!**


