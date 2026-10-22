@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo ========================================================
echo       Servidor Local Black Lotus Jiu Jitsu
echo ========================================================
echo.
echo Abrindo: http://ctblacklotus.local
echo.
start http://ctblacklotus.local
python -m http.server 80
pause
