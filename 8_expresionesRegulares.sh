# !/bin/bash
# Programa para ejemplificar como capturar la info del usuario y validarla utilizando las expresiones regulares.
# Autor: Matthew Farrell

numRegex='^[0-9]{10}$' #valida números de longitud 10
paisRegex='^MX|COL|US$'
dateRegex='^(19|20)([0-9]{2})(0[1-9]|1[0-2])(0[1-9]|[1-2][0-9]|3[0-1])$' #valida >

echo "Expresiones Regulares"
read -p "Ingresa un Id: " id
read -p "Ingresa las Iniciales del Pais: " pais
read -p "Ingresa una fecha YYYYMMDD: " date

#Validamos la informacion

if [[ $id =~ $numRegex ]]; then
    echo "ID: $id valido"
else
    echo "ID: $id invalido"
fi

if [[ $pais =~ $paisRegex ]]; then
    echo "Pais: $pais valido"
else
    echo "Pais: $pais invalido"
fi

if [[ $date =~ $dateRegex ]]; then
    echo "Fecha: $date valida"
else
    echo "Fecha: $date invalida"
fi

