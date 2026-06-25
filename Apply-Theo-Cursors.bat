@echo off
setlocal
chcp 65001 >nul
title Apply Theo Cursor
echo Applying Theo Cursor...
echo This will switch the current Windows cursor scheme.
echo.
powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0Install-Theo-Cursors.ps1" -Apply
echo.
pause
