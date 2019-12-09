# Crea un script que os muestre por pantalla todos los archivos del tipo .doc ubicados 
# en vuestra carpeta de usuario. 
# (utiliza la variable de entorno correspondiente para la carpeta de usuario)
Get-ChildItem C:\Users\$env:USERNAME -Recurse -Filter '*.doc'