@echo off
setlocal
chcp 65001 >nul
title Diderich Cursor Uninstall Helper
powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0Uninstall-Diderich-Cursors.ps1"
echo.
pause
