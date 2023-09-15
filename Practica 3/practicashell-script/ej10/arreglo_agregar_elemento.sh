#!/bin/bash
array=("elemento1" "elemento2" "elemento3")
array[3]="elemento4"
echo "${array[@]}" # Imprime todos los elementos del arreglo
