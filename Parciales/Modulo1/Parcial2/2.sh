#!/bin/bash

if [ $# -lt 2 ]; then
	echo "Debe ingresar como minimo dos parametros"
	exit 1
else
	directorio=$1
	archivos=(${@:2})
	if [ -e $directorio ]; then
		echo "$directorio existe"
		if [ -d $directorio ]; then
			echo "$directorio es un directorio"
			for archivo in ${archivos[@]}; do
				if [ -e $directorio/$archivo ]; then
					echo "$directorio/$archivo existe"
					if [ -f $directorio/$archivo ]; then
						echo "$directorio/$archivo es un archivo"
						if [ -x $directorio/$archivo ]; then
							echo "Se tien permiso de ejecucion sobre el archivo $directorio/$archivo"
						fi
					fi
					if [ -d $directorio/$archivo ]; then
						echo "$directorio/$archivo es un directorio"
						if [ -w $directorio/$archivo ]; then
							echo "Se tienen permisos de escritura sobre $directorio/$archivo"
						fi
					fi
				fi
			done
		fi
	fi
fi

