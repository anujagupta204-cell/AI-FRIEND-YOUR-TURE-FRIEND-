
# Voice AI Friend - Auto-start Server (PowerShell)
# This script starts the Node.js server and opens the website

Write-Host ""
Write-Host "=========================================="
Write-Host " Voice AI Friend - Starting Server"
Write-Host "==========================================" -ForegroundColor Green
Write-Host ""

# Check if Node.js is installed
try {
    node --version | Out-Null
} catch {
    Write-Host "ERROR: Node.js is not installed or not in PATH" -ForegroundColor Red
    Write-Host "Please install Node.js from https://nodejs.org/" -ForegroundColor Yellow
    Read-Host "Press Enter to exit"
    exit 1
}

# Check if npm packages are installed
if (!(Test-Path "node_modules")) {
    Write-Host "Installing dependencies..." -ForegroundColor Yellow
    npm install
}

# Start the server in background
Write-Host "Starting server..." -ForegroundColor Cyan
Start-Process node -ArgumentList "server.js" -WindowStyle Hidden

# Wait for server to start
Write-Host "Waiting for server to start..."
Start-Sleep -Seconds 2

# Open browser
Write-Host "Opening website in browser..." -ForegroundColor Cyan
Start-Sleep -Seconds 1
Start-Process "http://localhost:3000"

Write-Host ""
Write-Host "=========================================="
Write-Host " Server is running on http://localhost:3000"
Write-Host " Voice AI Friend is ready to use!" -ForegroundColor Green
Write-Host "==========================================" -ForegroundColor Green
Write-Host ""
Write-Host "To stop the server, close the Node.js window or press Ctrl+C"
