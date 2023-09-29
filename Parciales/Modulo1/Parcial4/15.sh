#!/bin/bash

if [ $# -lt 2 ]; then
	echo "Uso: $0 paremtro1 [paremtro2 parametro3 ...]"
	exit 1
fi

arreglo=($@)

existe(){
	if [ $# -ne 1 ]; then
		exit 2
	fi

	encontre=false
	for (( i=0; i< ${#arreglo[@]}; i++ )); do
		if [ "${arreglo[$i]}" == "$1" ]; then
			encontre=true
			echo "$i"
			break
		fi
	done
	if $encontre; then
		return 0
	else 
		return 1
	fi
}

replace(){
	if [ $# -ne 2 ]; then
		exit 3
	fi

	if existe $1; then
		pos=$(existe $1)
		arreglo[$pos]=$2
	fi
}

eliminar(){
	if [ ! $# -eq 1 ]; then
		echo "Se debe ingresar solo 1 parametro"
		exit 4
	fi
	if existe $1; then
		pos=$(existe $1)
		unset arreglo[$pos]
		arreglo=(${arreglo[@]})
	else
		echo "Error 2"
		exit 2
	fi
}

cantidad(){
	echo "${#arreglo[@]}"
}

todos(){
	echo "${arreglo[@]}"
}

todos
cantidad
replace pedro pablo
todos
cantidad
eliminar omar
todos cantidad

