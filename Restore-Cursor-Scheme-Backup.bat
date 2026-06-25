@echo off
setlocal
chcp 65001 >nul
title Restore Cursor Scheme Backup
echo Restoring the latest cursor scheme backup...
echo.
powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0Restore-Cursor-Scheme-Backup.ps1"
echo.
pause
