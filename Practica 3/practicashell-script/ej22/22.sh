#!/bin/bash
num=(10 3 5 7 9 3 5 4)

productora(){
	tot=1
	for ((i=0; i<${#num[@]}; i++)); do
		((tot*=${num[$i]}))
	done
	echo "El total es: $tot"	
}

productora
