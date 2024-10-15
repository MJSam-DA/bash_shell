#!/bin/bash
# Ejemplificar el uso de iteración for
# Autor: Matthew Farrell

arregloNumeros=(1 2 3 4 5 6)

echo "Iterar en la Lista de Números"
for num in ${arregloNumeros[*]}
do 
    echo "Número: $num"
done

echo "Iterara en la Lista de Cadenas"
for nombre in "Matt" "Stark" "Chris"
do
    echo "Nombre: $nombre"
done

echo "Iterar en la Lista de Archivos"
for file in *
do
    echo "Nombre archivo: $file"
done

echo "Iterar Utilizando un Comando (en este caso "ls")"
for file in $(ls)
do
    echo "Nombre de archivo: $file"
done

echo "Iterar con el formato tradicional (con un contador y limite)"
for ((i=1; i<10; i++))
do
    echo "Número: $i"
done
