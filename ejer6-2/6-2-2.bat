@echo off
REM Modifica el ejercicio 
REM anterior para que si el divisor es 0 
REM diga que no puede realizarse dicha operación.
set /p x="Ponga el primer numero: "
set /p y="Ponga el segundo numbero: "
set /a total="%x%+%y%"
echo La suma es %total%
REM QTR => Greater than
IF %x% GTR %y% (
    set /a resta="%x%-%y%"
    REM EQU => Equal than
    IF %y% EQU 0 (
        echo La resta es %x%
        echo No puede realizarse la division
    ) ELSE (
        echo La resta es %resta%
        set /a divi="%x%/%y%"
        echo La division es %divi%
    )
) ELSE (
    set /a resta="%y%-%x%"
    IF %x% EQU 0 (
        echo La resta es %y%
        echo No puede realizarse la division
    ) ELSE (
        echo La resta es %resta%
        set /a divi="%y%/%x%"
        echo La division es %divi%
    )
)
exit