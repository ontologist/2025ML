# Setting Up HTTPS for Backend API

## Problem
GitHub Pages uses HTTPS, but your backend API is HTTP. Browsers block mixed content (HTTPS page → HTTP API) for security.

## Solutions

### Option 1: Cloudflare Tunnel (Recommended - Free & Easy)

Cloudflare Tunnel creates a secure HTTPS connection to your HTTP backend for free.

#### Step 1: Install Cloudflare Tunnel
```powershell
# Download cloudflared from:
# https://github.com/cloudflare/cloudflared/releases
# Or use winget:
winget install --id Cloudflare.cloudflared
```

#### Step 2: Authenticate
```powershell
cloudflared tunnel login
```
This opens a browser to authorize the tunnel.

#### Step 3: Create Tunnel
```powershell
# Create a tunnel
cloudflared tunnel create ml101-bot

# This gives you a tunnel ID (save it!)
```

#### Step 4: Configure Tunnel
Create `C:\Users\yuri\.cloudflared\config.yml`:
```yaml
tunnel: YOUR_TUNNEL_ID
credentials-file: C:\Users\yuri\.cloudflared\YOUR_TUNNEL_ID.json

ingress:
  - hostname: ml101bot.yourdomain.com  # Use a subdomain you own
    service: http://localhost:8001
  - service: http_status:404
```

#### Step 5: Run Tunnel
```powershell
cloudflared tunnel run ml101-bot
```

#### Step 6: Update DNS
- Go to Cloudflare DNS settings for your domain
- Add CNAME record: `ml101bot` → `YOUR_TUNNEL_ID.cfargotunnel.com`

#### Step 7: Update Frontend
Update `docs/bot-chat.js` line 6:
```javascript
this.apiUrl = 'https://ml101bot.yourdomain.com/api';
```

---

### Option 2: ngrok (Quick Testing - Free)

Good for quick testing, but URLs change on free tier.

#### Step 1: Install ngrok
```powershell
# Download from: https://ngrok.com/download
# Or use winget:
winget install ngrok
```

#### Step 2: Start Tunnel
```powershell
ngrok http 8001
```

This gives you a URL like: `https://abc123.ngrok.io`

#### Step 3: Update Frontend
Update `docs/bot-chat.js` line 6:
```javascript
this.apiUrl = 'https://abc123.ngrok.io/api';  // Use your ngrok URL
```

**Note:** Free ngrok URLs change each time. For permanent solution, use Cloudflare Tunnel.

---

### Option 3: Reverse Proxy with Let's Encrypt (Production)

Set up nginx or Caddy with SSL certificate.

#### Using Caddy (Easiest)

1. **Install Caddy:**
   ```powershell
   winget install Caddy.Caddy
   ```

2. **Create `Caddyfile` in backend directory:**
   ```
   ml101bot.yourdomain.com {
       reverse_proxy localhost:8001
   }
   ```

3. **Run Caddy:**
   ```powershell
   caddy run
   ```

   Caddy automatically gets SSL certificate from Let's Encrypt!

4. **Update Frontend:**
   ```javascript
   this.apiUrl = 'https://ml101bot.yourdomain.com/api';
   ```

#### Using nginx (More Control)

More complex setup, but more flexible. See nginx documentation.

---

### Option 4: Test Locally (Development)

For local testing, serve the GitHub Pages site over HTTP:

```powershell
cd docs
python -m http.server 8000
```

Then visit: `http://localhost:8000/index.html`

This avoids mixed content blocking.

---

## Quick Fix: Dynamic API URL

Temporarily, you can make the API URL conditional:

```javascript
// In bot-chat.js constructor
const isLocal = window.location.hostname === 'localhost' || 
                window.location.hostname === '127.0.0.1';
this.apiUrl = isLocal 
    ? 'http://localhost:8001/api'
    : 'https://YOUR_HTTPS_API_URL/api';
```

---

## Recommended Approach

1. **For Development:** Use local HTTP server (Option 4)
2. **For Testing:** Use ngrok (Option 2) - quick and easy
3. **For Production:** Use Cloudflare Tunnel (Option 1) - free, permanent, secure

---

## After Setting Up HTTPS

1. Update `docs/bot-chat.js` with new HTTPS URL
2. Test the connection
3. Commit and push changes
4. Verify from GitHub Pages

---

**Need help?** Check `docs/TROUBLESHOOTING.md` for more details.


