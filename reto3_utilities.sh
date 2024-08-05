# !/bin/bash
# Reto 3: Solicitar que se ingrese un valor del 1 al 5. Según el valor ingresado, hacer la validación utilizando las condicionales e imprimir el resultado. Construir expresiones de validación numéricas, cadenas y archivos según la opción ingresada.
# Autor: Matthew Farrell

echo -e "\n¡Bienvenid@!"
echo "Este script te ayudará a agilizar algunas tareas de la terminal. Solo tienes que seleccionar el número de la opción que desees en el siguiente menú:"

echo -e "\n-------------------------Menú-------------------------"
echo "1) Abrir un archivo con el programa predeterminado."
echo "2) Abrir el explorador de archivos en la ruta deseada."
echo "3) Buscar archivos por extención y guardar los nombres en un archivo de texto."
echo "4) Crear archivo script con permisos de ejecución."
echo "5) Validar si una página web esta activa."
echo "0) Salir."

regexOpcion='^[1-5]{1}$'
echo -e "\n"
read -n1 -p "¿Qué opción elige? " opcion
echo -e "\n"


if [[ $opcion == 1 ]]; then
    nombreArchivo=""
    read -p "Indique el nombre del archivo, con la extención, que gusta abrir (presione 0 para regresar al menú): " nombreArchivo
    xdg-open $nombreArchivo

elif [[ $opcion == 2 ]]; then
    rutaCarpeta=""
    read -p "Indique la ruta del directorio que desea abrir (después de usarlo presione "ctrl+c" en la terminal para terminar la ejecución): " rutaCarpeta
    nautilus $rutaCarpeta

elif [[ $opcion == 3 ]]; then
    extencion=""
    ruta=""
    read -p "Indica la extención de los archivos que deseas encontrar (ignora el punto de la extención): " extencion
    read -p "¿Cuál es la ruta dónde deseas encontrar los archivos? (escribe la ruta completa): " ruta
    find $ruta -name "*.$extencion" >> archivos_$extencion.txt ; cat archivos_$extencion.txt

elif [[ $opcion == 4 ]]; then
    nombreScript=""
    read -p "¿Qué nombre desea que tenga su script? " nombreScript
    echo "# !/bin/bash" | tee -a "$nombreScript".sh ; chmod 764 "$nombreScript".sh ; vim "$nombreScript".sh

elif [[ $opcion == 5 ]]; then
    nombrePag=""
    read -p "Indica el nombre de la página web que deseas validar: " nombrePag
    ping -c5 $nombrePag

elif [[ $opcion == 0 ]]; then
    echo "¡Gracias por tu visita!" ; exit

else
    echo "Por favor indique una opción del 0 al 5"

fi
