#!/bin/bash

opciones="Ejercicio_3 Expresiones Estructuras "
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
						break
					;;
					B)
						echo "Ingrese 2 numeros: "
						read n1 n2
						"/home/peter/Desktop/Sistemas-Operativos/Practica 3/practicashell-script/ej12/b.sh" $n1 $n2
						break
					;;
					C)
						echo "Ingrese una operacion y dos numeros: "
						read op n1 n2
						"/home/peter/Desktop/Sistemas-Operativos/Practica 3/practicashell-script/ej12/c.sh" $op $n1 $n2
						break
					;;
				esac
			done
			break
		;;
		Estructuras)
			echo "Estructuras de control"
			opcionesEstr="A B C"
			select optEstr in $opcionesEstr; do
				case $optEstr in
					A)
						"/home/peter/Desktop/Sistemas-Operativos/Practica 3/practicashell-script/ej13/a.sh"
						break
					;;
					B)
						"/home/peter/Desktop/Sistemas-Operativos/Practica 3/practicashell-script/ej13/b.sh"
						break
					;;
					C)
						echo "Ingrese el nombre de un archivo: "
						read nombre
						"/home/peter/Desktop/Sistemas-Operativos/Practica 3/practicashell-script/ej13/c.sh" $nombre
						break
					;;
				esac
			done
			break
		;;
	esac
done

