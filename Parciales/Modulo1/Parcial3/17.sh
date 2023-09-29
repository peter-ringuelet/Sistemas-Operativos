#!/bin/bash

arreglo=($(cat /etc/passwd | cut -d":" -f1))

existe(){
	encontre=false
	for i in ${arreglo[@]}; do
		if [ "$1" == "$i" ]; then
			encontre=true
			break
		fi
	done
	if $encontre; then
		return 0
	else
		return 1
	fi
}

eliminar_usuario(){
	if existe $1; then
		pos=0
		for i in ${arreglo[@]}; do
			if [ "$1" == "$i" ]; then
				unset arreglo[$pos]
				arreglo=($arreglo[@])
				echo "Usuario eliminado con exito"
				break
			fi
			((pos++))
		done
	else
		echo "Error 2"
		exit 2
	fi
}

usuarios_con_patron(){
	for i in ${arreglo[@]}; do
		if [[ $i == *$1* ]]; then
			echo "$i"
		fi
	done
}

cantidad(){
	echo "${#arreglo[@]}"
}

usuarios(){
	echo "${arreglo[@]}"
}

usuarios
cantidad
echo "Usuarios con patron: "
usuarios_con_patron pe
echo "A quien quiere eliminar?"
read usuario
eliminar_usuario $usuario
usuarios
cantidad
