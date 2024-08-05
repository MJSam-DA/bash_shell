# !/bin/bash
# Reto 2: Script para solicitar la información del usuario, con validación de datos como nombres, apellidos, edad, dirección y números telefónicos; y posterior imprima toda la información.
# Autor: Matthew Farrell

regexnombre='^([A-Z]{1})([a-z]*)$'
regexapellido='^([A-Z]{1})([a-z]*)$'
regexedad='^(1[5-9])|([2-9][0-9])$'
regexdireccion=""
regexcel='^[0-9]{4,10}$'

echo "Formulario de Datos"
echo "Favor de agregar los siguientes datos: "
echo -e "\n"
read -p "Nombre: " nombre
read -p "Apellido: " apellido
read -p "Edad: " edad
read -p "Dirección: " direccion
read -p "Celular: " cel

echo -e "\n"
echo "Validando datos..."
contador=0

if [[ $nombre =~ $regexnombre ]]; then
    echo "Nombre: valido"
    contador=$((contador + 1))
else
    echo "Nombre... invalido"
fi

if [[ $apellido =~ $regexapellido ]]; then
   echo "Apellido: validos"
    contador=$((contador + 1))
else
    echo "Apellido... invalidos"
fi

if [[ $edad =~ $regexedad ]]; then
    echo "Edad: valida"
    contador=$((contador + 1))
else
    echo "Edad... invalida"
fi

if [[ $direccion =~ $regexdireccion ]]; then
    echo "Dirección: valida"
    contador=$((contador + 1))
else
    echo "Dirección... invalida"
fi

if [[ $cel =~ $regexcel ]]; then
    echo "Celular: valido"
    contador=$((contador + 1))
else
    echo "Celular... invalido"
fi

if [[ $contador -eq 5 ]]; then
    echo -e "\n¡Sus datos han sido validados exitosamente!"
else
    echo -e "\nFavor de corregir los datos arriba indicados como invalidos"
fi

