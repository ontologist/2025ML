# Cloudflare Tunnel Setup for ML-101 Bot

## Why Cloudflare Tunnel?

- ✅ Free HTTPS for your backend
- ✅ No need to expose ports on your router
- ✅ Works from anywhere (no VPN needed)
- ✅ Permanent URL (unlike ngrok free tier)
- ✅ Automatic SSL certificate

## Prerequisites

1. A domain name (can be a subdomain)
2. Domain managed by Cloudflare (free plan works)

## Step-by-Step Setup

### Step 1: Install Cloudflare Tunnel

```powershell
# Download from: https://github.com/cloudflare/cloudflared/releases/latest
# Or use winget:
winget install --id Cloudflare.cloudflared
```

### Step 2: Login to Cloudflare

```powershell
cloudflared tunnel login
```

This opens your browser. Click to authorize.

### Step 3: Create a Tunnel

```powershell
cloudflared tunnel create ml101-bot
```

**Save the tunnel ID** that's displayed!

### Step 4: Create Config File

Create directory and config file:
```powershell
New-Item -ItemType Directory -Force -Path "$env:USERPROFILE\.cloudflared"
```

Create `$env:USERPROFILE\.cloudflared\config.yml`:
```yaml
tunnel: YOUR_TUNNEL_ID_HERE
credentials-file: C:\Users\yuri\.cloudflared\YOUR_TUNNEL_ID.json

ingress:
  - hostname: ml101bot.yourdomain.com
    service: http://localhost:8001
  - service: http_status:404
```

**Replace:**
- `YOUR_TUNNEL_ID_HERE` with actual tunnel ID
- `ml101bot.yourdomain.com` with your subdomain
- `C:\Users\yuri` with your actual user path if different

### Step 5: Create DNS Record

In Cloudflare dashboard:
1. Go to your domain → DNS
2. Add record:
   - **Type:** CNAME
   - **Name:** ml101bot (or your subdomain)
   - **Target:** `YOUR_TUNNEL_ID.cfargotunnel.com`
   - **Proxy status:** Proxied (orange cloud)

### Step 6: Start Tunnel

```powershell
cloudflared tunnel run ml101-bot
```

Keep this running! The tunnel is active.

### Step 7: Test HTTPS URL

Visit: `https://ml101bot.yourdomain.com/health`

Should return: `{"status":"healthy","ollama":"healthy","course_id":"ml101"}`

### Step 8: Update Frontend

Edit `docs/bot-chat.js` line 6:
```javascript
this.apiUrl = 'https://ml101bot.yourdomain.com/api';
```

### Step 9: Run as Windows Service (Optional)

To run tunnel automatically on startup:

```powershell
cloudflared service install
cloudflared service start
```

## Verification

1. **Check tunnel is running:**
   ```powershell
   cloudflared tunnel list
   ```

2. **Test HTTPS endpoint:**
   ```powershell
   Invoke-WebRequest -Uri "https://ml101bot.yourdomain.com/health"
   ```

3. **Test from GitHub Pages:**
   - Visit: https://ontologist.github.io/2025ML/#bot-portal
   - Try sending a message
   - Should work without mixed content error!

## Troubleshooting

### Tunnel not connecting
- Check Cloudflare dashboard → Zero Trust → Tunnels
- Verify DNS record is correct
- Check config.yml syntax

### DNS not resolving
- Wait a few minutes for DNS propagation
- Check Cloudflare DNS settings
- Verify CNAME target is correct

### Backend not accessible
- Make sure backend is running on localhost:8001
- Check Windows Firewall allows localhost connections
- Verify service URL in config.yml

---

**Once set up, your bot will work from GitHub Pages!** 🎉

