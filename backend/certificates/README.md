# Certificate Files Directory

Place your No-IP wildcard certificate files here:

- `cert.crt` - Your certificate file (`.crt` or `.pem`)
- `key.key` - Your private key file (`.key`)

## How to Get Your Certificate Files

1. **From No-IP Dashboard:**
   - Go to: https://www.noip.com/
   - Navigate to your certificate management
   - Download certificate and private key

2. **From No-IP Client:**
   - Check installation directory
   - Usually in: `C:\Program Files\No-IP\certificates\`

3. **From Windows Certificate Store:**
   - Open Certificate Manager (certmgr.msc)
   - Export certificate and private key

## File Names

The files must be named exactly:
- `cert.crt` - Certificate file
- `key.key` - Private key file

## Security Note

⚠️ **Never commit these files to git!** They are already in `.gitignore`.

These files contain sensitive information and should be kept secure.


