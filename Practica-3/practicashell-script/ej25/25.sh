#!/bin/bash
arreglo=($(cat /etc/group | grep users | cut -d: -f4 | tr ',' ' '))

case $1 in
	-b)
		if [ $# -eq 2 ]; then
			if (( $2 <= ${#arreglo[@]} )); then
				echo "En la posicion $2 del arreglo se encuentra el elemento ${arreglo[$2 - 1]}"
			else
				echo "Error al imprimir el usuario en la pos $2"
			fi
		else
			echo "Falta el parametro que indica la pos del usuario en el arreglo"
		fi
		;;
	-l)
		echo "${#arreglo[@]}"
		;;
	-i)
		echo "${arreglo[@]}"
		;;
	*)
		echo "Ingreso un parametro no valido"


esac

