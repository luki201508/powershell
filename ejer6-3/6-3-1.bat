@echo off
REM Hacer un procedimiento bat que pida números y los vaya sumando hasta 
REM que se introduzca un 0. En ese momento mostrará el resultado de la suma y terminará.
set /p input="Ponga: "
:while
if NOT %input% EQU 0 (
    set /a "suma+=%input%"
    set /p input="Ponga: "
    goto :while
)
echo "La suma es: %suma%"
pause
