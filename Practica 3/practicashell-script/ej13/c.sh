#!/bin/bash
if [ "$#" -ne 1 ]; then
	echo "Uso: $0 <nombre_archivo>"
	exit 1
fi

nombre=$1

if [ -e $nombre ]; then
	if [ -d $nombre ]; then
		echo "$nombre es un directorio"
	elif [ -f $nombre ]; then
		echo "$nombre es un archivo"
	else
		echo "$nombre existe pero no es ni un archivo ni un directorio"
	fi
else
	mkdir "$nombre"
	if [ $? -eq 0 ]; then
		echo "Se creo exitosamente el directorio $nombre"
	else
		echo "No se pudo crear el directorio $nombre debido a un error"
	fi
fi
