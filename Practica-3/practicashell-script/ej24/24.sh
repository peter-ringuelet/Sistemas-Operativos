#!/bin/bash
vector1=(1 2 3 4 5)
vector2=(6 7 8 9 10)

if [ ${#vector1[@]} -ne ${#vector2[@]} ]; then
	echo "Los vectores no tienen la misma dimension"
	exit 1
fi

for (( i=0; i<${#vector1[@]}; i++)); do
	suma=$(( ${vector1[$i]} + ${vector2[$i]} ))
	echo "La suma de los elementos de la posicion $i es $suma"
done

