@echo off
REM Solana Circuit Screensaver — detects all monitors, launches fullscreen on each
REM Press ESC in any window to close them all
powershell -ExecutionPolicy Bypass -WindowStyle Hidden -File "%~dp0_launch.ps1"
