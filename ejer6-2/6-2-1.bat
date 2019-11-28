@echo off
REM Hacer un procedimiento de comandos que pida dos 
REM números y dé su suma, resta, multiplicación y división. 
REM Debe restar el número mayor menos el menor y dividir el mayor entre el menor.
set /p x="Ponga el primer numero: "
set /p y="Ponga el segundo numbero: "
set /a total="%x%+%y%"
echo La suma es %total%
REM QEQ => Greater or equal than
IF %x% GEQ %y% (
    set /a resta="%x%-%y%"
    set /a divi="%x%/%y%"
) ELSE (
    set /a resta="%y%-%x%"
    set /a divi="%y%/%x%"
)
echo La resta es %resta%
echo La division es %divi%
exit