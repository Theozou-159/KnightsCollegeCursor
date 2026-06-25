@echo off
setlocal
chcp 65001 >nul
title Apply Diderich Cursor
echo Applying Diderich Cursor...
echo This will switch the current Windows cursor scheme.
echo.
powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0Install-Diderich-Cursors.ps1" -Apply
echo.
pause
