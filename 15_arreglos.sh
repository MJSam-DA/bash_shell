#!/bin/bash
# Programa para ejemplificar los arreglos.
# Autor: Matthew Farrell

arregloNumeros=(1 2 3 4 5 6 7)
arregloCadenas=(Scarlet, Matt, Damian)
arregloRangos=({A..Z} {10..20})

# Imprimir todos los valores:
echo -e "\nTodos los valores:"
echo "Arreglo de números: ${arregloNumeros[*]}"
echo "Arreglo de cadenas: ${arregloCadenas[*]}"
echo "Arreglo de rangos: ${arregloRangos[*]}"

# Imprimir los tamaños de los arreglos:
echo -e "\nTamaños de los arreglos:"
echo "Tamaño arreglo de números: ${#arregloNumeros[*]}"
echo "Tamaño arreglo de cadenas: ${#arregloCadenas[*]}"
echo "Tamaño arreglo de rangos: ${#arregloRangos[*]}"

# Imprimir la posición de cada arreglo:
echo -e "\nPosición 3 de cada arreglo:"
echo "Posición 3 de arreglo de números: ${arregloNumeros[3]}"
echo "Posición 3 de arreglo de cadenas: ${arregloCadenas[3]}"
echo "Posición 3 de arreglo de rangos: ${arregloRangos[3]}"

# Añadir y eliminar valores del arreglo números:
echo -e "\nAñadir y eliminar valores del arreglo números:"
arregloNumeros[8]=23
unset arregloNumeros[1]
echo "Arreglo de números actualizado: ${arregloNumeros[*]}"
echo "Tamaño arreglo de números actualizado: ${#arregloNumeros[*]}"

echo -e "\nAñadir valores del arreglo cadenas:"
arregloCadenas[3]=Lana
echo "Posición 3 de arreglo de cadenas: ${arregloCadenas[3]}"
