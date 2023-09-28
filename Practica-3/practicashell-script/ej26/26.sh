#!/bin/bash

if [ $# -eq 0 ]; then
	echo "Ingrese al menos un parametro"
	exit 1
fi

arreglo=($@)

for ((i=0; i<${#arreglo[@]}; i+=2 )); do
	if [ -f ${arreglo[$i ]} ]; then
		echo "${arreglo[$i]} es un archivo"
	elif [ -d ${arreglo[$i]} ]; then 
		echo "${arreglo[$i]} es un directorio"
	fi
done

inexistentes=0
for (( i=0; i<${#arreglo[@]}; i++)); do
	if [ ! -e ${arreglo[$i]} ]; then
		((inexistentes++))
	fi
done
echo "$inexistentes no existen"
