# Step-by-Step HTTPS Setup for ML-101 Bot

## Choose Your Solution

### 🚀 Quick Option: ngrok (5 minutes) - Best for Testing
- ✅ Fast setup
- ✅ Works immediately
- ❌ URL changes each time (free tier)
- ❌ Not permanent for production

### 🏆 Best Option: Cloudflare Tunnel (15 minutes) - Best for Production
- ✅ Free and permanent
- ✅ Professional solution
- ✅ No router configuration needed
- ❌ Requires a domain name

---

## Option 1: ngrok (Quick Setup - 5 minutes)

### Step 1: Install ngrok

**Option A: Using winget (Recommended)**
```powershell
winget install ngrok
```

**Option B: Manual Download**
1. Go to: https://ngrok.com/download
2. Download Windows version
3. Extract `ngrok.exe` to a folder (e.g., `C:\ngrok\`)
4. Add to PATH or use full path

### Step 2: Sign up for ngrok (Free)

1. Go to: https://dashboard.ngrok.com/signup
2. Create a free account
3. Get your authtoken from: https://dashboard.ngrok.com/get-started/your-authtoken

### Step 3: Configure ngrok

```powershell
# Authenticate (replace with your token)
ngrok config add-authtoken YOUR_AUTH_TOKEN_HERE
```

### Step 4: Start ngrok Tunnel

**Make sure your backend is running first!**
```powershell
# In a new PowerShell window, start your backend:
cd C:\Users\yuri\OneDrive\Documents\GitHub\2025ML\backend
.\venv\Scripts\Activate.ps1
python -m uvicorn app.main:app --host 0.0.0.0 --port 8001 --reload
```

**Then in another PowerShell window:**
```powershell
# Start ngrok tunnel
ngrok http 8001
```

You'll see output like:
```
Forwarding   https://abc123.ngrok-free.app -> http://localhost:8001
```

**Copy the HTTPS URL** (the one starting with `https://`)

### Step 5: Update Frontend Code

1. Open: `docs/bot-chat.js`
2. Find line 34 (around line 34):
   ```javascript
   return 'https://YOUR_HTTPS_API_URL/api'; // ⚠️ UPDATE THIS!
   ```
3. Replace with your ngrok URL:
   ```javascript
   return 'https://abc123.ngrok-free.app/api'; // Use YOUR ngrok URL
   ```

### Step 6: Test

1. Save the file
2. Commit and push:
   ```powershell
   git add docs/bot-chat.js
   git commit -m "Update API URL to ngrok HTTPS endpoint"
   git push origin main
   ```
3. Wait 1-2 minutes for GitHub Pages to update
4. Visit: https://ontologist.github.io/2025ML/#bot-portal
5. Try sending a message - it should work! 🎉

### Step 7: Keep ngrok Running

**Important:** Keep the ngrok window open and running. If you close it, the URL changes.

**To make it run automatically:**
- Create a Windows Task Scheduler task
- Or use a startup script

---

## Option 2: Cloudflare Tunnel (Permanent Solution - 15 minutes)

### Prerequisites
- A domain name (can be a subdomain)
- Domain managed by Cloudflare (free plan works)

### Step 1: Install Cloudflare Tunnel

**Option A: Using winget**
```powershell
winget install --id Cloudflare.cloudflared
```

**Option B: Manual Download**
1. Go to: https://github.com/cloudflare/cloudflared/releases/latest
2. Download `cloudflared-windows-amd64.exe`
3. Rename to `cloudflared.exe`
4. Place in `C:\Program Files\Cloudflare\` (or any folder in PATH)

### Step 2: Login to Cloudflare

```powershell
cloudflared tunnel login
```

This will:
1. Open your browser
2. Ask you to select your domain
3. Authorize the tunnel
4. Save credentials

### Step 3: Create a Tunnel

```powershell
cloudflared tunnel create ml101-bot
```

**Important:** Save the Tunnel ID that appears! It looks like: `abc12345-6789-0123-4567-890123456789`

### Step 4: Create Config File

```powershell
# Create config directory
New-Item -ItemType Directory -Force -Path "$env:USERPROFILE\.cloudflared"

# Create config file (replace TUNNEL_ID with your actual tunnel ID)
@"
tunnel: YOUR_TUNNEL_ID_HERE
credentials-file: C:\Users\yuri\.cloudflared\YOUR_TUNNEL_ID.json

ingress:
  - hostname: ml101bot.yourdomain.com
    service: http://localhost:8001
  - service: http_status:404
"@ | Out-File -FilePath "$env:USERPROFILE\.cloudflared\config.yml" -Encoding UTF8
```

**Edit the file:**
1. Replace `YOUR_TUNNEL_ID_HERE` with your actual tunnel ID
2. Replace `ml101bot.yourdomain.com` with your desired subdomain
3. Replace `C:\Users\yuri` with your actual user path if different

### Step 5: Create DNS Record

1. Go to: https://dash.cloudflare.com
2. Select your domain
3. Go to **DNS** → **Records**
4. Click **Add record**:
   - **Type:** CNAME
   - **Name:** `ml101bot` (or your subdomain name)
   - **Target:** `YOUR_TUNNEL_ID.cfargotunnel.com` (use your tunnel ID)
   - **Proxy status:** Proxied (orange cloud) ✅
   - **TTL:** Auto
5. Click **Save**

### Step 6: Start the Tunnel

```powershell
cloudflared tunnel run ml101-bot
```

Keep this window open! The tunnel is now active.

### Step 7: Test HTTPS URL

Wait 1-2 minutes for DNS to propagate, then test:

```powershell
Invoke-WebRequest -Uri "https://ml101bot.yourdomain.com/health"
```

Should return: `{"status":"healthy","ollama":"healthy","course_id":"ml101"}`

### Step 8: Update Frontend Code

1. Open: `docs/bot-chat.js`
2. Find line 34:
   ```javascript
   return 'https://YOUR_HTTPS_API_URL/api'; // ⚠️ UPDATE THIS!
   ```
3. Replace with your Cloudflare URL:
   ```javascript
   return 'https://ml101bot.yourdomain.com/api'; // Use YOUR subdomain
   ```

### Step 9: Deploy and Test

```powershell
git add docs/bot-chat.js
git commit -m "Update API URL to Cloudflare Tunnel HTTPS endpoint"
git push origin main
```

Wait 1-2 minutes, then test: https://ontologist.github.io/2025ML/#bot-portal

### Step 10: Run Tunnel as Service (Optional - Keeps Running)

To keep the tunnel running automatically:

```powershell
# Install as Windows service
cloudflared service install

# Start the service
cloudflared service start

# Check status
cloudflared service status
```

---

## Option 3: Test Locally (Development Only)

For local testing without HTTPS:

### Step 1: Start Local Server

```powershell
cd docs
python -m http.server 8000
```

### Step 2: Open in Browser

Visit: `http://localhost:8000/index.html`

The bot will automatically use `http://localhost:8001/api` (no HTTPS needed for local testing).

---

## Troubleshooting

### ngrok: "Tunnel not found"
- Make sure ngrok is running
- Check that backend is running on port 8001
- Verify authtoken is set correctly

### Cloudflare: "DNS not resolving"
- Wait 2-5 minutes for DNS propagation
- Verify CNAME record is correct
- Check that proxy is enabled (orange cloud)

### Both: "Cannot connect to backend"
- Make sure backend is running: `http://localhost:8001/health`
- Check Windows Firewall
- Verify tunnel is running (keep the window open)

### Frontend: Still shows mixed content error
- Clear browser cache (Ctrl+Shift+Delete)
- Hard refresh (Ctrl+F5)
- Check browser console for errors
- Verify API URL in `bot-chat.js` is correct

---

## Quick Reference

**ngrok Commands:**
```powershell
ngrok http 8001                    # Start tunnel
ngrok config add-authtoken TOKEN  # Set authtoken
```

**Cloudflare Commands:**
```powershell
cloudflared tunnel login           # Login
cloudflared tunnel create NAME     # Create tunnel
cloudflared tunnel run NAME        # Run tunnel
cloudflared tunnel list            # List tunnels
cloudflared service install        # Install as service
```

---

## Which Should I Use?

- **Quick Testing:** Use ngrok (5 minutes)
- **Production/Students:** Use Cloudflare Tunnel (permanent)
- **Local Development:** Use local HTTP server

---

**Need help?** Check the detailed guides:
- `docs/HTTPS-SETUP.md` - All options explained
- `backend/CLOUDFLARE-TUNNEL-SETUP.md` - Detailed Cloudflare guide
- `docs/TROUBLESHOOTING.md` - Common issues


