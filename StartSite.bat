@echo off
REM ===============================================
REM  Local preview for your Jekyll GitHub Pages site
REM  Paweł Cabała — StartSite.bat
REM ===============================================

REM --- Change this path if your site folder is elsewhere ---
cd /d "D:\Sites\pcabala.github.io"

echo.
echo Starting local Jekyll server with live reload...
echo (You can open http://127.0.0.1:4000 in your browser)
echo.

REM --- Run Jekyll ---
bundle exec jekyll serve --livereload

echo.
echo Server stopped. Press any key to close this window.
pause >nul
