@echo off
setlocal
chcp 65001 >nul
title Theo Cursor Image2 Uninstall Helper
powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0Uninstall-Theo-Cursors.ps1"
echo.
pause
