#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Uso: $0 <patron>"
    exit 1
fi

arreglo=($(grep "$1" /etc/passwd | cut -d: -f1))

opciones="listar eliminar contar finalizar"
select opt in $opciones; do
    case $opt in
        listar)
            for usr in ${arreglo[@]}; do
                echo "Usuario: $usr"
            done
        ;;
        eliminar)
            i=0
            for usr in ${arreglo[@]}; do
                echo "$i $usr"
                ((i++))
            done
            echo "Seleccione una posicion de un usuario"
            read pos
            unset arreglo[$pos]
            arreglo=(${arreglo[@]})
        ;;
        contar)
            echo "${#arreglo[@]}"
        ;;
        finalizar)
            echo "finalizado con exito"
            break
        ;;
    esac
done

exit 0