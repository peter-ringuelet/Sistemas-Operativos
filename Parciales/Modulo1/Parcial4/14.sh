#!/bin/bash

if [ $# -ne 1 ]; then
	exit 1
fi

while true; do
	if who | grep $1; then
		echo "El usuaria $1 es un usuario del sistema"
		echo "$1 $(date)" >> /tmp/usuarios.log
		break
	else 
		sleep 5
	fi
done

