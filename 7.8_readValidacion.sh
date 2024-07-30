# !/bin/bash

# Programa para ejemplificar como capturar la info y validarla.
# Autor: Matthew Farrell - @Matt

option=0
backupName=""
clave=""

echo "Programa Utilidades Postgres"
read -n1 -p "Ingresar una opción: " option
echo -e "\n"

read -n10 -p "Ingresar el nombre del archivo del backup: " backupName
echo -e "\n"

read -s -p "Clave: " clave
echo -e "\n"

echo "Opción: $option, Nombre de Backup: $backupName, Clave: $clave"
