#!/bin/bash

arreglo=($(cat /var/log/municipios.txt | cut -d " " -f1))

existeMunicipio(){
	if [ $# -ne 1 ]; then
		echo "No se pasaron parametros suficientes"
		exit 1
	else

		existe=false
		for i in ${arreglo[@]}; do
			if [ $i == $1 ]; then
				encontre=true
				break
			fi
		done
		if [ ! $existe ]; then
			return 1
		else
			return 0
		fi
	fi
}

agregarMunicipio(){
	if [ $# -ne 1 ]; then
		echo "No se ha ingresado un nombre"
		exit 2
	else
		if  existeMunicipio $1 ; then
			arreglo[${#arreglo[@]}]=$1
		fi
	fi
	echo "Agregado exitosamente"
}

listarMunicipios(){
	echo "${arreglo[@]}"
}

cantidadMunicipios(){
	echo "${#arreglo[@]}"
}

listarMunicipios
agregarMunicipio elMago
agregarMunicipio LaPlata
cantidadMunicipios
listarMunicipios
