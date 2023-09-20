#!/bin/bash

arreglo=()
for i in /home/*.doc ; do
	if [ -f $i ]; then
		arreglo+=$i
	fi
done

verArchivo(){
	if [ $# -ne 1 ]; then
		echo "Numero de parametros incorrecto"
	else
		encontre=false
		for i in ${arreglo[@]}; do
			if [ $i == $1 ]; then
				cat /home/$i
				encontre=true
				break
			fi
		done
		if [ ! $encontre ]; then
			echo "No se encontro el archivo"
		fi
	fi
}

verArchivo pruebaEj29.doc
verArchivo hola
echo "${arreglo[@]}"

