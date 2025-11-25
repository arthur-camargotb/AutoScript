@echo off
echo Iniciando processo de build...
python build.py
if %errorlevel% neq 0 (
    echo.
    echo Ocorreu um erro durante o build.
    pause
    exit /b %errorlevel%
)
echo.
echo Build finalizado com sucesso!
pause
