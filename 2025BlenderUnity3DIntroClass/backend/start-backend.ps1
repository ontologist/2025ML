# Start backend for 2025BlenderUnity3DIntroClass
cd $PSScriptRoot
.\venv\Scripts\Activate.ps1
python -m uvicorn app.main:app --host 0.0.0.0 --port 8003 --reload
