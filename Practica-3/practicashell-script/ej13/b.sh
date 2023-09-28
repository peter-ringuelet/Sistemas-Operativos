#!/bin/bash
opciones="Listar DondeEstoy QuienEsta"
select opt in $opciones; do
	if [ "$opt" == "Listar" ]; then
		ls
		break
	elif [ "$opt" == "DondeEstoy" ]; then
		pwd
		break
	elif [ "$opt" == "QuienEsta" ]; then
		who
		break
	else
		echo "Opcion incorrecta"
	fi
done

