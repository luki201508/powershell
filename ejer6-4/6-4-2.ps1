# Crea un script que visualice todas las carpetas recursivamente a partir 
# de vuestra carpeta de usuario (utiliza la variable de entorno correspondiente 
# para la carpeta de usuario)
Get-ChildItem C:\Users\$env:USERNAME -Recurse -Directory