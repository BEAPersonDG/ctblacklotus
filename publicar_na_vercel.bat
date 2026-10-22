@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo ========================================================
echo       Publicando Black Lotus Jiu Jitsu na Vercel
echo ========================================================
echo.
echo Conectando a sua conta Vercel (beapersondgs-projects)...
echo Se for a primeira vez, o navegador abrira para voce
echo confirmar o login na sua conta da Vercel.
echo.
npx vercel --prod --yes
echo.
echo ========================================================
echo   Publicacao concluida com sucesso!
echo ========================================================
pause
