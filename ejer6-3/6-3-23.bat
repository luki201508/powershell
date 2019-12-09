@echo off
setlocal EnableDelayedExpansion
REM Hacer un procedimiento de comandos que sea un juego de 
REM adivinar un número de 0 a 100. El número se pondrá fijo 
REM al principio del procedimiento. Se irá preguntando al 
REM usuario números y se dirá si es mayor o menor que el que 
REM hay que adivinar. Se termina cuando el usuario se rinda e 
REM introduzca un 0 (se mostrará la frase “Intentalo otro día”), 
REM o lo adivine (Se mostrará la línea “Enhorabuena, has acertado”).
REM Además habrá que chequear que el número introducido está entre 
REM 0 y 100 y si no es así, se mostrará un mensaje en el que lo 
REM advierta y que vuelva a pedir otro número.
REM Modificar el bat para que el número se genere 
REM aleatoriamente y al final diga el número de intentos que han sido necesarios. 
set /a "constNumber=%random% %%100 + 1"
set /a attemptNumber=0
:while
set /p numero="Ponga: "
IF !numero! GEQ 0 IF !numero! LEQ 100 (
    IF !numero! EQU 0 (
        echo "Intentalo otro dia"
        goto :end
    ) ELSE (
        IF !numero! EQU %constNumber% (
            echo "Enhorabuena, has acertado"
            goto :end
        )
    )
) ELSE (
    echo "Numero introducido menor que 0 o mayor que 100"
)
set /a attemptNumber+=1
goto :while
:end
set /a attemptNumber+=1
echo "Intentos totales: %attemptNumber%"
