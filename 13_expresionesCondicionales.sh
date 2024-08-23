# !/bin/bash
# Programa para ejemplificar las expresiones condicionales.
# Autor: Matthew Farrell

edad=0
pais=""
pathArchivo=""

read -p "Ingrese su edad: " edad
read -p "Ingrese su país: " pais
read -p "Ingrese la ruta de su archivo: " pathArchivo


echo -e "\nExpresiones Condicionales con Números"
if [ $edad -lt 10 ]; then
    echo "La persona es una niña o niño."
elif [ $edad -ge 10 ] && [ $edad -le 17 ]; then
    echo "La persona es adolecente."
else
    echo "La persona es adulta."
fi


echo -e "\nExpresiones Condicionales con Números"
if [ $pais = "Canadá" ] || [ $pais = "EU" ] || [ $pais = "México" ]; then
    echo "La persona es Norteaméricana."
elif [ $pais = "Belize" ] || [ $pais = "Costa Rica" ] || [ $pais = "El Salvador" ] || [ $pais = "Guatemala" ] || [ $pais = "Honduras" ] || [ $pais = "Nicaragua" ] || [ $pais = "Panamá" ]; then
    echo "La persona es Centroaméricana."
else
    echo "La persona es Sudaméricana"
fi



echo -e "\nExpresiones Condicionales con Archivos"
if [ -d $pathArchivo ]; then
    echo "El directorio $pathArchivo existe."
else
    echo "El directorio $pathArchivo no existe."
fi

