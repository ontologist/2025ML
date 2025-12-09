"""Authentication service with email OTP."""
from typing import Optional, Dict
from datetime import datetime, timedelta
import secrets
import string
import hashlib
from app.services.email_service import EmailService
from app.core.config import settings
import logging
try:
    import redis.asyncio as redis
except ImportError:
    redis = None

logger = logging.getLogger(__name__)


class AuthService:
    """Service for handling authentication with email OTP."""
    
    def __init__(self):
        self.email_service = EmailService()
        # Use Redis for OTP storage (or in-memory dict as fallback)
        self.redis_client = None
        self.otp_storage = {}  # Fallback: {email: {code, expires_at, attempts}}
        self.otp_expiry_minutes = 10
        self.max_attempts = 5
    
    async def _get_redis(self):
        """Get Redis client (lazy initialization)."""
        if self.redis_client is None:
            try:
                self.redis_client = await redis.from_url(settings.REDIS_URL)
            except Exception as e:
                logger.warning(f"Redis not available, using in-memory storage: {e}")
        return self.redis_client
    
    async def _store_otp(self, email: str, otp_code: str) -> None:
        """Store OTP code with expiration."""
        expires_at = datetime.now() + timedelta(minutes=self.otp_expiry_minutes)
        
        redis_client = await self._get_redis()
        if redis_client:
            try:
                # Store in Redis with expiration
                key = f"otp:{email}"
                await redis_client.setex(
                    key,
                    self.otp_expiry_minutes * 60,
                    f"{otp_code}:{expires_at.isoformat()}:0"  # code:expires:attempts
                )
                return
            except Exception as e:
                logger.warning(f"Redis storage failed: {e}")
        
        # Fallback to in-memory storage
        self.otp_storage[email] = {
            'code': otp_code,
            'expires_at': expires_at,
            'attempts': 0
        }
    
    async def _get_otp(self, email: str) -> Optional[Dict]:
        """Get stored OTP for email."""
        redis_client = await self._get_redis()
        if redis_client:
            try:
                key = f"otp:{email}"
                value = await redis_client.get(key)
                if value:
                    parts = value.decode().split(':')
                    if len(parts) >= 2:
                        return {
                            'code': parts[0],
                            'expires_at': datetime.fromisoformat(parts[1]),
                            'attempts': int(parts[2]) if len(parts) > 2 else 0
                        }
            except Exception as e:
                logger.warning(f"Redis retrieval failed: {e}")
        
        # Fallback to in-memory storage
        return self.otp_storage.get(email)
    
    async def _increment_attempts(self, email: str) -> int:
        """Increment OTP verification attempts."""
        redis_client = await self._get_redis()
        if redis_client:
            try:
                key = f"otp:{email}"
                value = await redis_client.get(key)
                if value:
                    parts = value.decode().split(':')
                    attempts = int(parts[2]) if len(parts) > 2 else 0
                    attempts += 1
                    # Update attempts
                    if len(parts) >= 2:
                        await redis_client.setex(
                            key,
                            self.otp_expiry_minutes * 60,
                            f"{parts[0]}:{parts[1]}:{attempts}"
                        )
                    return attempts
            except Exception as e:
                logger.warning(f"Redis update failed: {e}")
        
        # Fallback
        if email in self.otp_storage:
            self.otp_storage[email]['attempts'] += 1
            return self.otp_storage[email]['attempts']
        return 0
    
    async def _delete_otp(self, email: str) -> None:
        """Delete OTP after successful verification."""
        redis_client = await self._get_redis()
        if redis_client:
            try:
                key = f"otp:{email}"
                await redis_client.delete(key)
                return
            except Exception as e:
                logger.warning(f"Redis delete failed: {e}")
        
        # Fallback
        if email in self.otp_storage:
            del self.otp_storage[email]
    
    def _validate_email_domain(self, email: str) -> bool:
        """
        Validate that email is from allowed domain (kwansei.ac.jp).
        
        Returns:
            True if email domain is allowed, False otherwise
        """
        allowed_domain = "kwansei.ac.jp"
        email_domain = email.split("@")[-1].lower() if "@" in email else ""
        return email_domain == allowed_domain
    
    async def send_otp(self, email: str) -> Dict[str, any]:
        """
        Send OTP code to user's email.
        
        Returns:
            Dict with success status and message
        """
        try:
            # Validate email domain
            if not self._validate_email_domain(email):
                return {
                    "success": False,
                    "message": f"Only email addresses from @kwansei.ac.jp are allowed. Your email domain is not authorized."
                }
            
            # Generate OTP
            otp_code = self.email_service.generate_otp()
            
            # Store OTP
            await self._store_otp(email, otp_code)
            
            # Send email
            success = await self.email_service.send_otp(
                email=email,
                otp_code=otp_code,
                course_name=settings.COURSE_NAME
            )
            
            if success:
                return {
                    "success": True,
                    "message": f"OTP code sent to {email}",
                    "expires_in_minutes": self.otp_expiry_minutes
                }
            else:
                return {
                    "success": False,
                    "message": "Failed to send OTP email. Please check email service configuration."
                }
                
        except Exception as e:
            logger.error(f"Error sending OTP: {str(e)}")
            return {
                "success": False,
                "message": f"Error sending OTP: {str(e)}"
            }
    
    async def verify_otp(self, email: str, otp_code: str) -> Dict[str, any]:
        """
        Verify OTP code.
        
        Returns:
            Dict with success status, message, and user_id if successful
        """
        try:
            # Validate email domain (double-check)
            if not self._validate_email_domain(email):
                return {
                    "success": False,
                    "message": f"Only email addresses from @kwansei.ac.jp are allowed. Your email domain is not authorized."
                }
            
            # Get stored OTP
            stored = await self._get_otp(email)
            
            if not stored:
                return {
                    "success": False,
                    "message": "OTP not found or expired. Please request a new code."
                }
            
            # Check expiration
            if datetime.now() > stored['expires_at']:
                await self._delete_otp(email)
                return {
                    "success": False,
                    "message": "OTP code has expired. Please request a new code."
                }
            
            # Check attempts
            if stored['attempts'] >= self.max_attempts:
                await self._delete_otp(email)
                return {
                    "success": False,
                    "message": "Too many failed attempts. Please request a new code."
                }
            
            # Verify code
            if stored['code'] != otp_code:
                attempts = await self._increment_attempts(email)
                remaining = self.max_attempts - attempts
                return {
                    "success": False,
                    "message": f"Invalid OTP code. {remaining} attempts remaining."
                }
            
            # OTP verified - delete it
            await self._delete_otp(email)
            
            # Generate user ID (hash of email for consistency)
            user_id = hashlib.sha256(email.encode()).hexdigest()[:16]
            
            # Store user session (optional - for JWT tokens later)
            # For now, just return user_id
            
            logger.info(f"OTP verified for {email}, user_id: {user_id}")
            
            return {
                "success": True,
                "message": "OTP verified successfully",
                "user_id": user_id,
                "email": email
            }
            
        except Exception as e:
            logger.error(f"Error verifying OTP: {str(e)}")
            return {
                "success": False,
                "message": f"Error verifying OTP: {str(e)}"
            }
    
    async def check_email_registered(self, email: str) -> bool:
        """
        Check if email is registered (for future use with user database).
        For now, all emails are allowed.
        """
        # TODO: Check against user database
        return True

