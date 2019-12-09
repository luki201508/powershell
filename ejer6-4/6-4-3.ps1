# Modifica el script anterior para que con esa información cree un 
# archivo de texto de nombre carpetas.txt
Get-ChildItem C:\Users\$env:USERNAME -Recurse -Directory | ForEach-Object {
    Add-Content .\carpetas.txt $_.FullName
}