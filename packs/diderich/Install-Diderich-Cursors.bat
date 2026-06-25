@echo off
setlocal
chcp 65001 >nul
title Diderich Cursor Installer
echo Installing Diderich Cursor...
echo This installs the scheme without changing your current cursor.
echo.
powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0Install-Diderich-Cursors.ps1"
echo.
pause
