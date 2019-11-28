@echo off
REM Crear un procedimiento bat en 
REM el que se pida un nombre de directorio, 
REM se cree y se situe en él
set /p path="Escriba un nombre de directorio: "
echo Se está creando el directorio en %CD%\%path%
mkdir %CD%\%path%
start /d "%CD%\%path%"
exit