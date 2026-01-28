@echo off
REM Voice AI Friend - Auto-start Server
REM This script starts the Node.js server and opens the website in your default browser

echo.
echo ==========================================
echo  Voice AI Friend - Starting Server
echo ==========================================
echo.

REM Check if Node.js is installed
node --version >nul 2>&1
if errorlevel 1 (
    echo ERROR: Node.js is not installed or not in PATH
    echo Please install Node.js from https://nodejs.org/
    pause
    exit /b 1
)

REM Check if npm packages are installed
if not exist "node_modules" (
    echo Installing dependencies...
    call npm install
)

REM Start the server
echo Starting server...
start /B node server.js

REM Wait for server to start
echo Waiting for server to start...
timeout /t 2 /nobreak

REM Open browser
echo Opening website in browser...
timeout /t 1 /nobreak
start http://localhost:3000

echo.
echo ==========================================
echo  Server is running on http://localhost:3000
echo  Voice AI Friend is ready to use!
echo ==========================================
echo.
echo This window will close in 5 seconds...
timeout /t 5 /nobreak
