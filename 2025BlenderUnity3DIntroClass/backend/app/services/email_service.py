"""Email service for sending OTP codes."""
import smtplib
from email.mime.text import MIMEText
from email.mime.multipart import MIMEMultipart
from typing import Optional
from app.core.config import settings
import logging
import secrets
import string

logger = logging.getLogger(__name__)


class EmailService:
    """Service for sending emails (OTP codes)."""
    
    def __init__(self):
        self.smtp_server = getattr(settings, 'SMTP_SERVER', 'smtp.gmail.com')
        self.smtp_port = getattr(settings, 'SMTP_PORT', 587)
        self.smtp_username = getattr(settings, 'SMTP_USERNAME', '')
        self.smtp_password = getattr(settings, 'SMTP_PASSWORD', '')
        self.from_email = getattr(settings, 'FROM_EMAIL', self.smtp_username)
        self.enabled = bool(self.smtp_username and self.smtp_password)
    
    def generate_otp(self, length: int = 6) -> str:
        """Generate a random OTP code."""
        return ''.join(secrets.choice(string.digits) for _ in range(length))
    
    async def send_otp(self, email: str, otp_code: str, course_name: str) -> bool:
        """
        Send OTP code to user's email.
        
        Args:
            email: Recipient email address
            otp_code: OTP code to send
            course_name: Name of the course
            
        Returns:
            True if sent successfully, False otherwise
        """
        if not self.enabled:
            logger.warning("Email service not configured. OTP not sent.")
            return False
        
        try:
            # Create message
            msg = MIMEMultipart('alternative')
            msg['Subject'] = f"{course_name} Bot - Login Verification Code"
            msg['From'] = self.from_email
            msg['To'] = email
            
            # Create email body
            text = f"""
Your login verification code for {course_name} Bot is:

{otp_code}

This code will expire in 10 minutes.

If you didn't request this code, please ignore this email.
            """
            
            html = f"""
<!DOCTYPE html>
<html>
<head>
    <style>
        body {{ font-family: Arial, sans-serif; line-height: 1.6; color: #333; }}
        .container {{ max-width: 600px; margin: 0 auto; padding: 20px; }}
        .code {{ font-size: 32px; font-weight: bold; color: #3b82f6; text-align: center; 
                padding: 20px; background-color: #f0f9ff; border-radius: 8px; margin: 20px 0; }}
        .footer {{ margin-top: 30px; font-size: 12px; color: #666; }}
    </style>
</head>
<body>
    <div class="container">
        <h2>{course_name} Bot - Login Verification</h2>
        <p>Your login verification code is:</p>
        <div class="code">{otp_code}</div>
        <p>This code will expire in <strong>10 minutes</strong>.</p>
        <p>If you didn't request this code, please ignore this email.</p>
        <div class="footer">
            <p>This is an automated message from {course_name} Bot.</p>
        </div>
    </div>
</body>
</html>
            """
            
            # Attach both plain text and HTML versions
            part1 = MIMEText(text, 'plain')
            part2 = MIMEText(html, 'html')
            msg.attach(part1)
            msg.attach(part2)
            
            # Send email
            with smtplib.SMTP(self.smtp_server, self.smtp_port) as server:
                server.starttls()
                server.login(self.smtp_username, self.smtp_password)
                server.send_message(msg)
            
            logger.info(f"OTP sent to {email}")
            return True
            
        except Exception as e:
            logger.error(f"Failed to send OTP email: {str(e)}")
            return False
    
    async def send_welcome_email(self, email: str, course_name: str) -> bool:
        """Send welcome email to new user."""
        if not self.enabled:
            return False
        
        try:
            msg = MIMEMultipart('alternative')
            msg['Subject'] = f"Welcome to {course_name} Bot!"
            msg['From'] = self.from_email
            msg['To'] = email
            
            text = f"""
Welcome to {course_name} Bot!

Your account has been created successfully. You can now use the bot to:
- Ask questions about the course
- Get help with assignments
- Review course materials
- Take assessments

Start chatting at: {settings.GITHUB_PAGES_URL}

Best regards,
{course_name} Bot Team
            """
            
            html = f"""
<!DOCTYPE html>
<html>
<body>
    <h2>Welcome to {course_name} Bot!</h2>
    <p>Your account has been created successfully.</p>
    <p>You can now use the bot to:</p>
    <ul>
        <li>Ask questions about the course</li>
        <li>Get help with assignments</li>
        <li>Review course materials</li>
        <li>Take assessments</li>
    </ul>
    <p><a href="{settings.GITHUB_PAGES_URL}">Start chatting</a></p>
    <p>Best regards,<br>{course_name} Bot Team</p>
</body>
</html>
            """
            
            part1 = MIMEText(text, 'plain')
            part2 = MIMEText(html, 'html')
            msg.attach(part1)
            msg.attach(part2)
            
            with smtplib.SMTP(self.smtp_server, self.smtp_port) as server:
                server.starttls()
                server.login(self.smtp_username, self.smtp_password)
                server.send_message(msg)
            
            logger.info(f"Welcome email sent to {email}")
            return True
            
        except Exception as e:
            logger.error(f"Failed to send welcome email: {str(e)}")
            return False

