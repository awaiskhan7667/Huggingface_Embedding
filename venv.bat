@echo off
REM Use the directory where this batch file is located
SET "PROJECT_DIR=%~dp0"
SET "ENV_DIR=%PROJECT_DIR%langchain_env"

cd /d "%PROJECT_DIR%"

REM Check if virtual environment exists, create if not
IF NOT EXIST "%ENV_DIR%\Scripts\activate.bat" (
    echo Creating virtual environment "langchain_env"...
    python -m venv langchain_env
)

REM Open current folder in VS Code
code .

REM Wait a bit to let VS Code open (optional)
timeout /t 2 /nobreak >nul

echo.
echo VS Code is open. To activate your virtual environment in terminal, run:
echo     .\langchain_env\Scripts\activate
