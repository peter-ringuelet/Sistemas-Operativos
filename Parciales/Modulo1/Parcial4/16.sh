#!/bin/bash

if [ $# -lt 2 ]; then
	echo "Uso: $0: DIRECTORIO ARCHIVO1 [ARCHIVO2 ARCHIVO3 ...]"
	exit 1
fi

directorio=$1
archivos=(${@:2})

if [ -e $directorio ]; then
	if [ -d $directorio ]; then
		echo "$directorio existe y es un directorio"
	else
		echo "$directorio existe pero no es un directorio"
	fi
else
	echo "$directorio no existe"
fi

for (( i=0; i<${#archivos[@]}; i++)); do
	if [ -e ${archivos[$i]} ]; then
		echo "${archivos[$i]} existe"
		if [ -f ${archivos[$i]} ]; then
			echo "${archivos[$i]} es un archivo"
			if [ -x ${archivos[$i]} ]; then
				echo "Se tiene permisos de ejecucion sobre el archivo ${archivos[$i]}"
			else
				echo "No se tienen permisos de ejecucion sobre el archivo ${archivos[$i]}"
			fi
		fi
		if [ -d ${archivos[$i]} ]; then
			echo "${archivos[$i]} es un directorio"
			if [ -w ${archivos[$i]} ]; then
				echo "Se tienen permisos de escritura sobre el directorio ${archivos[$i]}"
			else
				echo "No se tienen permisos de escritura sobre el directorio ${archivos[$i]}"
			fi
		fi
	else
		echo "No existe ${archivos[$i]}"
	fi
done
