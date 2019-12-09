# Crea un script para que haga las siguientes operaciones:
# •	Pedirá un nombre para los archivos que quieres crear
# •	Pedirá la cantidad de archivos que quieres crear
# •	Los archivos creados tendrán el siguiente formato:
#     número_de_archivo_nombre_de_archivo.txt
# •	Dentro del archivo creado tendremos la siguiente frase:
#     Este es el archivo número (número de archivo)
$nombre_archivos = Read-Host -Prompt "Nombre de los archivos que quiere crear"
$cantidad_archivos = Read-Host -Prompt "Cantidad de archivos a crear"
for($i=1;$i -le $cantidad_archivos; $i++) {
    Add-Content .\test\$i$nombre_archivos.txt "Este es el archivo número $i"
}
