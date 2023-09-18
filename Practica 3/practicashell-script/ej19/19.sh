#!/bin/bash

opciones="Ejercicio_3 Expresiones"
select opt in $opciones; do
	case $opt in
		Ejercicio_3)
			echo "ejer 3"
			"/home/peter/Desktop/Sistemas-Operativos/Practica 3/practicashell-script/ej3/mostrar.sh"
			break
		;;
		Expresiones)
			echo "evaluar expresiones"
			opcionesExpr="A B C"
			select optExpr in $opcionesExpr; do
				case $optExpr in
					A)
						"/home/peter/Desktop/Sistemas-Operativos/Practica 3/practicashell-script/ej12/a.sh"
						break;;
				esac
			done
		break;;
	esac

done

