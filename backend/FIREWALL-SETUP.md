# Windows Firewall Setup for ML-101 Bot

## ✅ Automatic Setup (Done)

I've automatically added a firewall rule for port 8001 using PowerShell.

## 🔍 Verify Firewall Rule

To check if the rule was created:

```powershell
Get-NetFirewallRule -DisplayName "ML-101 Bot Backend Port 8001"
```

## 🛠️ Manual Setup (If Needed)

If the automatic setup didn't work, you can add it manually:

### Method 1: PowerShell (Run as Administrator)

```powershell
New-NetFirewallRule -DisplayName "ML-101 Bot Backend Port 8001" -Direction Inbound -LocalPort 8001 -Protocol TCP -Action Allow
```

### Method 2: Windows Defender Firewall GUI

1. **Open Windows Defender Firewall:**
   - Press `Win + R`
   - Type: `wf.msc`
   - Press Enter

2. **Create Inbound Rule:**
   - Click "Inbound Rules" in the left panel
   - Click "New Rule..." in the right panel
   - Select "Port" → Next
   - Select "TCP" and enter "8001" → Next
   - Select "Allow the connection" → Next
   - Check all profiles (Domain, Private, Public) → Next
   - Name: "ML-101 Bot Backend Port 8001" → Finish

3. **Create Outbound Rule (Optional):**
   - Click "Outbound Rules"
   - Repeat the same steps for outbound traffic (usually not needed)

## 🌐 Additional Ports (If Needed)

If you want to add the frontend port (3001) later:

```powershell
New-NetFirewallRule -DisplayName "ML-101 Bot Frontend Port 3001" -Direction Inbound -LocalPort 3001 -Protocol TCP -Action Allow
```

## 🔍 Check All Bot-Related Firewall Rules

```powershell
Get-NetFirewallRule | Where-Object {$_.DisplayName -like "*ML-101*"} | Select-Object DisplayName, Enabled, Direction, Action
```

## 🚨 Troubleshooting

### If port is still blocked:

1. **Check if rule is enabled:**
   ```powershell
   Get-NetFirewallRule -DisplayName "ML-101 Bot Backend Port 8001" | Select-Object Enabled
   ```

2. **Enable the rule if disabled:**
   ```powershell
   Enable-NetFirewallRule -DisplayName "ML-101 Bot Backend Port 8001"
   ```

3. **Check if another firewall is blocking:**
   - Some antivirus software has its own firewall
   - Check your antivirus settings

4. **Test the connection:**
   ```powershell
   Test-NetConnection -ComputerName localhost -Port 8001
   ```

## 📝 Notes

- **Inbound rules** are needed for students to connect TO your server
- **Outbound rules** are usually not needed (your server can connect out by default)
- The rule is for **TCP** protocol (HTTP/HTTPS uses TCP)
- Make sure to run PowerShell **as Administrator** when creating firewall rules

---

**Status:** Firewall rule should be created automatically. Verify with the command above!


