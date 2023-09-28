#!/bin/bash

if [ $# -ne 1 ]; then
	echo "Uso: $0 <nombre_usuario>"
	exit 1
fi

usuario=$1

while true; do
	if  who | grep -q $usuario ;then
		echo "Usuario $usuario logueado"
		exit 0
	fi
	sleep 10
done
