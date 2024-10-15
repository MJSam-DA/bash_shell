#!/bin/bash
# Programa para consultar diferentes recursos.
# Autor: Matthew Farrell

opcion=0

while :
do
    #Limpiar pantalla
    clear
    #Desplear menú de opciones
    echo "--------------------------------------"
    echo "         Consulta de Recursos         "
    echo "--------------------------------------"
    echo "            MENÚ PRINCIPAL            "
    echo "--------------------------------------"
    echo "1 - Procesos actuales."
    echo "2 - Memoria disponible."
    echo "3 - Espacio en disco."
    echo "4 - Información de red."
    echo "5 - Variables de entorno configuradas."
    echo "6 - Información del programa."
    echo "7 - Salir del programa."
    
    echo -e "\n"

    #Leer los datos del usuario
    read -n1 -p "Ingrese una opción del 1 al 7: " opcion

    echo -e "\n"

    #Validar opciones
    case $opcion in
        1)
            echo -e "Validando los procesos actuales...\n"
            sleep 3
            ps aux
            exit 0
            ;;

        2)
            echo -e "Revisando la memoria disponible en MB...\n"
            sleep 3
            free -m
            exit 0
            ;;

        3)
            echo -e "Calculando el espacio en disco...\n"
            sleep 3
            df -h
            exit 0
            ;;

        4)
            echo -e "Obteniendo la información de la red...\n"
            sleep 3
            ifconfig -a
            exit 0
            ;;

        5)
            echo -e "Mostrar las variables de entorno configuradas actualmente...\n"
            sleep 3
            printenv
            exit 0
            ;;

        6)
            echo -e "Generando la información del programa...\n"
            sleep 3
            dpkg --list
            exit 0
            ;;

        7)
            echo -e "Saliendo del programa...\n"
            sleep 3
            exit 0
            ;;

    esac
done

