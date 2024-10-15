#!/bin/bash
# Programa para ejemplificar los loops anidados.
# Autor: Matthew Farrell

echo "Loops Anidados"

for fill in $(ls)
do
    for nombre in {1..4}
    do
        echo "Nombre del archivo: $fill _ $nombre"
    done
done
