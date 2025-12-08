"""Authentication API endpoints."""
from fastapi import APIRouter, HTTPException
from pydantic import BaseModel, EmailStr
from app.services.auth_service import AuthService
import logging

logger = logging.getLogger(__name__)

router = APIRouter()

# Initialize auth service
auth_service = AuthService()


class SendOTPRequest(BaseModel):
    """Request model for sending OTP."""
    email: EmailStr


class SendOTPResponse(BaseModel):
    """Response model for sending OTP."""
    success: bool
    message: str
    expires_in_minutes: int = 10


class VerifyOTPRequest(BaseModel):
    """Request model for verifying OTP."""
    email: EmailStr
    otp_code: str


class VerifyOTPResponse(BaseModel):
    """Response model for verifying OTP."""
    success: bool
    message: str
    user_id: str = None
    email: str = None


@router.post("/send-otp", response_model=SendOTPResponse)
async def send_otp(request: SendOTPRequest):
    """
    Send OTP code to user's email.
    
    Student enters their email, receives OTP code via email.
    """
    try:
        result = await auth_service.send_otp(request.email)
        
        if result["success"]:
            return SendOTPResponse(
                success=True,
                message=result["message"],
                expires_in_minutes=result.get("expires_in_minutes", 10)
            )
        else:
            raise HTTPException(status_code=400, detail=result["message"])
            
    except Exception as e:
        logger.error(f"Error in send_otp endpoint: {str(e)}")
        raise HTTPException(status_code=500, detail=f"Error sending OTP: {str(e)}")


@router.post("/verify-otp", response_model=VerifyOTPResponse)
async def verify_otp(request: VerifyOTPRequest):
    """
    Verify OTP code and authenticate user.
    
    Student enters OTP code, receives user_id if verified.
    """
    try:
        result = await auth_service.verify_otp(request.email, request.otp_code)
        
        if result["success"]:
            return VerifyOTPResponse(
                success=True,
                message=result["message"],
                user_id=result.get("user_id"),
                email=result.get("email")
            )
        else:
            raise HTTPException(status_code=400, detail=result["message"])
            
    except HTTPException:
        raise
    except Exception as e:
        logger.error(f"Error in verify_otp endpoint: {str(e)}")
        raise HTTPException(status_code=500, detail=f"Error verifying OTP: {str(e)}")


@router.get("/check-email")
async def check_email(email: str):
    """
    Check if email is registered (for future use).
    Currently returns True for all emails.
    """
    try:
        is_registered = await auth_service.check_email_registered(email)
        return {
            "email": email,
            "registered": is_registered
        }
    except Exception as e:
        logger.error(f"Error checking email: {str(e)}")
        raise HTTPException(status_code=500, detail=f"Error checking email: {str(e)}")

