@echo off
setlocal
chcp 65001 >nul
title Theo Cursor Image2 Installer
echo Installing Theo Cursor Image2...
echo.
powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0Install-Theo-Cursors.ps1"
echo.
pause
