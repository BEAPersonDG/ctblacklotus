@echo off
chcp 65001 >nul
echo ========================================================
echo   Configurando ctblacklotus.local no seu computador...
echo ========================================================

:: Verifica privilegios de administrador
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo.
    echo Solicitando permissao de Administrador para atualizar o hosts...
    powershell -Command "Start-Process cmd -ArgumentList '/c \"\"%~f0\"\"' -Verb RunAs"
    exit /b
)

:: Adiciona no hosts se ainda nao existir
findstr /i "ctblacklotus.local" "%windir%\System32\drivers\etc\hosts" >nul
if %errorlevel% neq 0 (
    echo 127.0.0.1 ctblacklotus.local>>"%windir%\System32\drivers\etc\hosts"
    echo [OK] Endereco ctblacklotus.local adicionado com sucesso!
) else (
    echo [OK] O endereco ctblacklotus.local ja esta configurado no hosts.
)

:: Limpa cache DNS
ipconfig /flushdns >nul

echo.
echo Abrindo http://ctblacklotus.local no navegador...
start http://ctblacklotus.local

echo.
echo Tudo pronto!
timeout /t 3 >nul
