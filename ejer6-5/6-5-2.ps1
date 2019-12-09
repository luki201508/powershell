# Modifica el script anterior para que diga si lo que pasa por 
# teclado es un directorio. En ese caso, se sacará una lista con los ficheros que contiene 
# este. En caso contrario, mostrará un mensaje de error
$carpeta = Read-Host -Prompt "Localizxacion de la carpeta"
If (Test-Path $carpeta -PathType Container) {
    Get-ChildItem $carpeta | Write-Host
} else {
    If (Test-Path $carpeta -PathType Any) {
        Write-Host "La ruta no es una carpeta"
    } else {
        Write-Host "La ruta no existe"
    }
}