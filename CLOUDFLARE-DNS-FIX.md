# Cloudflare DNS Record Fix for ML-101 Bot

## ✅ RESOLVED

**Solution:** DNS record was successfully updated in Cloudflare Dashboard. The ML-101 bot uses its own dedicated tunnel (`ml101-bot`).

The ML-101 bot is accessible at: `https://ml101bot.tijerino.ai`

---

## Original Problem
The DNS record for `ml101bot.tijerino.ai` exists but may be pointing to the wrong tunnel, causing 530 errors. Additionally, the DNS record couldn't be edited in the Cloudflare Dashboard (it would revert after saving).

## ✅ Final Solution: Dedicated ML-101 Tunnel

The ML-101 bot uses its own dedicated tunnel with the DNS record correctly configured:

**Config file** (`%USERPROFILE%\.cloudflared\config.yml`):
```yaml
tunnel: 5ee1c4ce-53bb-425b-a488-bfb1ed3605e8
credentials-file: C:\Users\yuri\.cloudflared\5ee1c4ce-53bb-425b-a488-bfb1ed3605e8.json

ingress:
  - hostname: ml101bot.tijerino.ai
    service: http://localhost:8001
  - service: http_status:404
```

**Tunnel to run:**
```powershell
cloudflared tunnel run ml101-bot
```

**DNS Record in Cloudflare:**
- **Name:** `ml101bot`
- **Type:** CNAME
- **Target:** `5ee1c4ce-53bb-425b-a488-bfb1ed3605e8.cfargotunnel.com`
- **Proxy:** Proxied (orange cloud ☁️)

---

## Alternative Solutions (if needed in future)

### Option 1: Use Cloudflare Tunnel CLI

**Important:** If the DNS record was created using `cloudflared tunnel route dns`, Cloudflare Tunnel manages it automatically. Manual edits in the dashboard will be reverted.

### Step 1: Delete the Existing Route
```powershell
cloudflared tunnel route dns delete ml101bot.tijerino.ai
```

### Step 2: Create Route with Correct Tunnel
```powershell
cloudflared tunnel route dns ml101-bot ml101bot.tijerino.ai
```

This will create/update the DNS record to point to the correct tunnel.

### Step 3: Alternative - Manual DNS Setup (if CLI doesn't work)

If the CLI approach doesn't work, manually create the DNS record:

1. Go to https://dash.cloudflare.com
2. Select domain: `tijerino.ai`
3. Go to **DNS → Records**
4. **Delete** any existing `ml101bot` CNAME record
5. Click **Add record**
6. Create new CNAME record:
   - **Name**: `ml101bot`
   - **Target**: `5ee1c4ce-53bb-425b-a488-bfb1ed3605e8.cfargotunnel.com`
   - **Proxy status**: **Proxied** (orange cloud ☁️)
   - **TTL**: Auto
7. Click **Save**

### Step 4: Verify
Wait 1-2 minutes for DNS propagation, then test:
```powershell
Invoke-WebRequest -Uri "https://ml101bot.tijerino.ai/health" -UseBasicParsing
```

Should return: `{"status":"healthy","ollama":"healthy","course_id":"ml101"}`

## Alternative: Delete and Recreate
If editing doesn't work:
1. Delete the existing `ml101bot` CNAME record
2. Create new CNAME record:
   - **Name**: `ml101bot`
   - **Target**: `5ee1c4ce-53bb-425b-a488-bfb1ed3605e8.cfargotunnel.com`
   - **Proxy**: Proxied (orange cloud)
   - **TTL**: Auto

## Tunnel Information
- **Tunnel Name**: ml101-bot
- **Tunnel ID**: 5ee1c4ce-53bb-425b-a488-bfb1ed3605e8
- **Backend Port**: 8001
- **Hostname**: ml101bot.tijerino.ai

