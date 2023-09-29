#!/bin/bash

esta_logueado(){
	if [ $(who | grep -wc $1) -eq 1 ]; then
		return 0
	else
		return 1
	fi
}

cant_procesos(){
	echo  "$(ps -u $1 | wc -l)"
}

uso_de_procesos(){
	if [ $(cant_procesos $1) -gt 99 ]; then
		return 0
	else
		return 1
	fi
}

usuarios=($@)
for user in ${usuarios[@]}; do
	if uso_de_procesos peter; then 
		echo "$user $date" >> /var/log/reporte.log
	fi
done
