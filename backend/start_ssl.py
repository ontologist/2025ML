"""Start FastAPI server with SSL support using No-IP certificate."""
import uvicorn
from app.core.config import settings
from pathlib import Path
import sys

# Certificate paths
cert_dir = Path(__file__).parent / "certificates"
cert_file = cert_dir / "cert.crt"
key_file = cert_dir / "key.key"

# Check if certificates exist
if not cert_file.exists():
    print(f"❌ Certificate file not found: {cert_file}")
    print(f"\nPlease copy your No-IP certificate file to: {cert_file}")
    print(f"   File should be named: cert.crt")
    sys.exit(1)

if not key_file.exists():
    print(f"❌ Private key file not found: {key_file}")
    print(f"\nPlease copy your No-IP private key file to: {key_file}")
    print(f"   File should be named: key.key")
    sys.exit(1)

print(f"✅ Certificate found: {cert_file}")
print(f"✅ Private key found: {key_file}")

if __name__ == "__main__":
    print(f"\n🚀 Starting ML-101 Bot API with SSL on port 8443")
    print(f"   HTTPS URL: https://ml101bot.tijerino.ddns.net:8443")
    print(f"   Health check: https://ml101bot.tijerino.ddns.net:8443/health")
    print(f"\n   Press Ctrl+C to stop\n")
    
    try:
        uvicorn.run(
            "app.main:app",
            host="0.0.0.0",
            port=8443,  # Using 8443 instead of 443 (doesn't require admin)
            ssl_keyfile=str(key_file),
            ssl_certfile=str(cert_file),
            reload=False  # Disable reload for production
        )
    except Exception as e:
        print(f"\n❌ Error starting server: {e}")
        print(f"\nTroubleshooting:")
        print(f"  1. Check certificate files are valid")
        print(f"  2. Verify port 8443 is not in use")
        print(f"  3. Check Windows Firewall allows port 8443")
        sys.exit(1)


