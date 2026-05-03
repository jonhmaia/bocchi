@echo off
title Bocchi - League of Legends Skin Changer
color 0A

echo ============================================
echo        BOCCHI - Skin Changer
echo ============================================
echo.
echo Iniciando o Bocchi em modo desenvolvimento...
echo.

cd /d "%~dp0"

:: Verifica se node_modules existe
if not exist "node_modules" (
    echo [!] Dependencias nao encontradas. Instalando...
    echo.
    call pnpm install
    echo.
)

echo [*] Iniciando aplicacao...
echo [*] Aguarde a janela do Bocchi abrir...
echo.

call npm run dev

pause
