# !/bin/bash
# Autor: Samuel Martinez

# Reto 1 de Curso de Bash Shell
# Desarrollar un programa llamado utilityHost.sh, dentro de él vamos a declarar dos variables una llamada option, otra llamada result, vamos a inicializarles e imprimir sus valores.

# Programa que hace PING el número de veces que indica el usuario, a la página que desea.

read -p "Indica la página web a la que quieres hacer ping: " PAGINA;
read -p "¿Cuántas veces deseas realizar el ping? " NUMERO;

ping -c $NUMERO $PAGINA
