#!/bin/bash
# Programa para ejemplificar el uso de break y continue
# Autor: Matthew Farrell

echo "Sentencias Break y Continue"

for fill in $(ls)
do
    for nombre in {1..2}
    do
        if [ $fill = "10_descargar.sh" ]; then
            break;
        elif [[ $fill == 4* ]]; then
            continue;
        else
            echo "Nombre del archivo: $fill _ $nombre"
        fi
    done
done
