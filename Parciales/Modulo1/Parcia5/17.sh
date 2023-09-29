#!/bin/bash

usuarios=($(cat /etc/passwd | grep "/bin/bash" | cut -d":" -f1))

for usuario in ${usuarios[@]}; do
	if [ -e /home/$usuario/mailDir ]; then
		echo "$usuario" >> /var/listado.txt
		echo "Usuario $usuario agregado"
	fi
done
