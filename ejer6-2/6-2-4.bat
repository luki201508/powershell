@echo off
REM Hacer un procedimiento bat que copie un fichero que
REM se le pasa como parámetro al directorio c:\pepe.
set fichero=%1
IF NOT EXIST "C:\pepe" (
    mkdir C:\pepe   
)
IF EXIST %fichero% (
    copy %fichero% C:\pepe\
) ELSE (
    echo El fichero no existe
)
pause