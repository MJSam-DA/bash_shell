# !/bin/bash
# Programa para ejemplificar las condicionales.
# Autor: Matthew Farrell

nota_clase=0
edad=0

echo "Ejemplo setencia condicional"
echo -e "\n"

read -n1 -p "Indique cual es su calificación (1-9): " nota_clase
echo -e "\n"
if (( $nota_clase >= 7 )); then
    echo "Aprobado"
else
    echo "Reprobado"
fi

echo -e "\n"
read -p "Indique su edad: " edad
if [ $edad -le 18 ]; then
    echo "Menor de edad"
else
    echo "Mayor de edad"
fi

if [ $edad -ge 1 ] && [ $edad -le 13 ]; then
    echo "Niñez"
elif [ $edad -ge 14 ] && [ $edad -le 19 ]; then
    echo "Adolecente"
elif [ $edad -ge 20 ] && [ $edad -le 64 ]; then
    echo "Adultez"
else
    echo "Adultez Mayor"
fi
