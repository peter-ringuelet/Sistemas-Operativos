#!/bin/bash

inicializar(){
	array=()
}

agregar_elem(){
	if [ $# -ne 1 ]; then
		echo "Numero de parametros invalido"
	else
		array[${#array[@]}]=$1
	fi
}

eliminar_elem(){
	if [ $# -ne 1 ]; then
		echo "Debe ingresar una posicion"
	else
		if [ $1 -lt ${#array[@]} ]; then
			unset array[$1]
			echo "Elemento en la posicion $1 eliminado con exito"
		else
			echo "La posicion esta fuera del rango del arreglo"
		fi
	fi
}

longitud(){
	echo "${#array[@]}"
}

imprimir(){
	echo "${array[@]}"
}

inicializar_con_valores(){
	if [ $# -ne 2 ]; then
		echo "Debe ingresar dos parametros, longitud y valor"
	else
		array=()
		for (( i=0; i<$1; i++ )); do
			array[$i]=$2
		done
	fi
}

inicializar_con_valores 10 putos
agregar_elem Hola
agregar_elem Chau
imprimir
eliminar_elem
eliminar_elem 2
eliminar_elem 1
imprimir
longitud
