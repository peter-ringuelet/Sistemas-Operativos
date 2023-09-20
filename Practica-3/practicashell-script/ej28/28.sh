#!/bin/bash
if [ $# -eq 1 ]; then
	if [ ! -d $1 ]; then
		echo "ERROR 4"
		exit 4
	else
		lectura=0
		escritura=0
		for i in $1/*; do
			if [ -f $i ]; then
				if [ -r $i ]; then
					((lectura++))
				fi
				if [ -w $i ]; then
					((escritura++))
				fi
			fi
		done
		echo "Hay $lectura archivos con permiso de lectura y $escritura con permisos de escritura"
	fi
else
	echo "Debe ingresar un solo parametro. Uso: $0 <directorio>"
fi

