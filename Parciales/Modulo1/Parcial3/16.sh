#!/bin/bash

if [ $# -lt 1 ]; then
	echo "Debe ingresar al menos un parametro"
	exit 1
fi

arreglo=($@)
contador=0

for ruta in ${arreglo[@]}; do
	if [ -f $ruta ]; then
		gzip $ruta
		echo "Archivo comprimido"
	elif [ -d $ruta ]; then
		if [ -r $ruta ]; then
			tar -cvzf ./empaquetado.tar.gz $ruta
			echo "Directorio empaquetado y comprimido"
		fi
		if [ -w $ruta ]; then
			rm -r $ruta
			echo "Directorio borrado"
		fi
	elif [ ! -e $ruta ]; then
		((contador++))
	fi
done

echo "Hay $contador archivos inexistentes"
	
