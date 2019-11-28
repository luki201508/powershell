@echo off
REM Haz un script en el que se pida por teclado 
REM el nombre de un fichero, se compruebe que existe. 
REM Si es el caso, se preguntará si quiere moverse o 
REM borrarse. En caso de querer moverse, se pedirá el 
REM directorio al que quiere moverse, y se realizará la 
REM operación que se pidió.
set /p path="Ponga la ruta del fichero: "
IF EXIST %path% (
    echo Elija una de las opciones:
    echo "1) Mover"
    echo "2) Borrar"
    set /p option="Elija"
    IF %option% EQU 1 (
        set /p next_path="Ponga la nueva ruta del fichero"
        move %path% %next_path%
        echo El fichero ahora esta en %next_path%
    ) ELSE (
        IF %option% EQU 2 (
            del %path%
            echo Fichero borrado - %path%
        )
    )
) ELSE (
    echo El fichero pasado no existe
)
exit