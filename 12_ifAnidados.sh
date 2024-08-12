# !/bin/bash
# Programa para ejemplificar el uso de los if anidados.
# Autor Matthew Farrell

notaClase=0
continua=""
extraordinario=""

read -n1 -p "Indique cual es su nota (1-9): " notaClase
echo -e "\n"

if [ $notaClase -ge 7 ]; then
    echo "!Aprobado!"
    read -n1 -p "¿Va a continuar estudiando en el siguiente nivel? (s/n): " continua
    if [ $continua == "s" ]; then
        echo -e "\n¡Bienvenido al siguiente nivel!"
    else
        echo -e "\n¡Te deseamos la mejor de las suertes!"
    fi
else
    echo "Reprobado"
    read -n1 -p "¿Tiene derecho a extraordinario? (s/n): " extraordinario
    if [ $extraordinario == "s" ]; then
        echo -e "\nExtraordinario autorizado."
    else
        echo -e "\nConsultar con el prefecto de su carrera."
    fi
fi
