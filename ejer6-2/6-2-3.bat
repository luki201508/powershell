@echo off
setlocal EnableDelayedExpansion
REM Haz un script en el que se pida por teclado 
REM el nombre de un fichero, se compruebe que existe. 
REM Si es el caso, se preguntará si quiere moverse o 
REM borrarse. En caso de querer moverse, se pedirá el 
REM directorio al que quiere moverse, y se realizará la 
REM operación que se pidió.
set /p patha="Ponga la ruta del fichero: " 
echo %CD%\%patha%
IF EXIST %CD%\%patha% (
    echo "Elija una de las opciones:"
    echo "1) Mover"
    echo "2) Borrar"
    set /p opcion=Elija una opcion: 
    IF !opcion!==1 (
        set /p next_path="Ponga la nueva ruta del fichero: "
        move !patha! !next_path!
        echo El fichero ahora esta en %cd%\!next_path!
    ) ELSE (
        IF !opcion!==2 (
            del !patha!
            echo Fichero borrado - !patha!
        )
    )
) ELSE (
    echo El fichero pasado no existe
)
exit
pause