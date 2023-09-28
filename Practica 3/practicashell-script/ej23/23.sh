#!/bin/bash
numeros=(1 2 3 4 5 6 7 8 9 10)
contador_impares=0

for num in ${numeros[@]}; do
	if (( $num % 2 == 0)); then
		echo "Numero par: $num"
	else
		((contador_impares++))
	fi
done

echo "Cantidad de numeros impares: $contador_impares"
