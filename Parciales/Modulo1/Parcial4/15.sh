#!/bin/bash

if [ $# -lt 2 ]; then
	echo "Uso: $0 paremtro1 [paremtro2 parametro3 ...]"
	exit 1
fi

arreglo = ($@)

existe(){
	if [ $# -ne 1 ]; then
		exit 2
	fi

	encontre=false
	for i in ${#arreglo[@]}; do
		if [ "${arreglo[$i]}" == "$1" ]; then
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
		pos=existe $1
		arreglo[$pos]=$2
	fi
}
