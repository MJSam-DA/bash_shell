# !/bin/bash

# Script para revisar la declaración de variables.

opcion=0
nombre=Matt

echo "Opción: $opcion y Nombre: $nombre"

# Exportar variable
export nombre

# Declarar en que script se reutilizará
./2_variables2.sh
