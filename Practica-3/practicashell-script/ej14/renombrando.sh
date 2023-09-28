#!/bin/bash
if [ $# -ne 3 ]; then
	echo "Uso: $0 <directorio> <-a | -b> <CADENA>"
	exit 1
fi

directorio=$1
opcion=$2
cadena=$3

if [ ! -d $directorio ]; then
	echo "El directorio $directorio no existe"
	exit 1
fi
cd $directorio
case $opcion in
	-a)
		for archivo in *; do
			if [ -f $archivo ]; then
				mv "$archivo" "${archivo}${cadena}"
			fi
		done
	;;
	-b)
		for archivo in *; do
			if [ -f $archivo ]; then
				mv "$archivo" "${cadena}${archivo}"
			fi
		done
	;;
	*) 
		echo "Opcion no valida. Use -a o -b"
		exit 1
	;;
esac

cd - > /dev/null
# > /dev/null es para que no se imprima en pantalla el directorio al que cambie con el cd
echo "Archivos renombrados con exito"
