@echo off
setlocal
chcp 65001 >nul
title Theo Cursor Installer
echo Installing Theo Cursor...
echo This installs the scheme without changing your current cursor.
echo.
powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0Install-Theo-Cursors.ps1"
echo.
pause
