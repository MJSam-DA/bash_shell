#!/bin/bash
# Programa que permite manejar las utilidades de Postgres
# Autor: Mathew Farrell

opcion=0

while :
do
    #Limpiar pantalla
    clear
    #Desplear menú de opciones
    echo "----------------------------------"
    echo "Programa de Utilidades de Postgres"
    echo "----------------------------------"
    echo "          MENÚ PRINCIPAL          "
    echo "----------------------------------"
    echo "1 - Instalar Postgres"
    echo "2 - Hacer un respaldo"
    echo "3 - Restaurar respaldo"
    echo "4 - Desinstalar Postgres"
    echo "5 - Salir"
    
    echo -e "\n"

    #Leer los datos del usuario
    read -n1 -p "Ingrese una opción del 1 al 5: " opcion

    echo -e "\n"

    #Validar opciones
    case $opcion in
        1)
            echo "Instalando Postgres..."
            sleep 3
            ;;

        2)
            echo "Haciendo respaldo..."
            sleep 3
            ;;

        3)
            echo "Restaurando respaldo..."
            sleep 3
            ;;

        4)
            echo "Desinstalando Postgres..."
            sleep 3
            ;;

        5)
            echo "Saliendo del programa..."
            sleep 3
            exit 0
            ;;
    esac
done

