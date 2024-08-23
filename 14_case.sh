#!/bin/bash
# Programa para el uso de las sentencias case
# Autor: Matthew Farrell

opcion=""

echo "Ejemplo Sentencia Case"
read -p "Ingresa una opción de la A a la Z: " opcion
echo -e "\n"

case $opcion in
    "A") echo -e "\nGuardar Archivo";;
    "B") echo "Eliminar archivo";;
    [C-E]) echo "No esta implementada esta opción";;
    "*") "Opción incorrecta"
esac
