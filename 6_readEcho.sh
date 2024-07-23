# !/bin/bash

# Programa para ejemplificar como capturar la info del usuario utilizando "echo" y "read" y la variable nativa $REPLY.
# Autor: Matthew Farrell - @Matt

option=0
backupName=""

echo "Programa Utilidades Postgres"
echo -n "Ingresar una opción: "
read
option=$REPLY

echo -n "Ingresar el nombre del archivo del backup: "
read
backupName=$REPLY

echo "Opción: $option, Nombre de Backup: $backupName"
