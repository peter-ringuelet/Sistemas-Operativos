#!/bin/bash
opciones="Hola Adios Salir"
select opt in $opciones; do
	if [ $opt == "Salir" ]; then
		break
	fi
	echo "Elegiste $opt"
done
