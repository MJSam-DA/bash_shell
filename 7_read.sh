# !/bin/bash

# Programa para ejemplificar como capturar la info del usuario utilizando "read".
# Autor: Matthew Farrell - @Matt

option=0
backupName=""

echo "Programa Utilidades Postgres"
read -p "Ingresar una opción: " option
read -p "Ingresar el nombre del archivo del backup: " backupName

echo "Opción: $option, Nombre de Backup: $backupName"
