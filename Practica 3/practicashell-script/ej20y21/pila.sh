#!/bin/bash
pila=()

push(){
        item=$1
        pila[${#pila[@]}]=$item
}

pop(){
        # Acceder al último elemento usando la longitud del array
        lastIndex=$((${#pila[@]}-1))
        
	echo "elemento eliminado: ${pila[lastIndex]}"
        unset pila[$lastIndex]
}

length(){
	echo ${#pila[@]}
}

print(){
	for (( i=${#pila[@]}-1; i>=0; i-- )); do
		echo "${pila[i]}"
	done
}

push "item1"
push "item2"
push "item3"
push "item4"
push "item5"
push "item6"
push "item7"
push "item8"
push "item9"
push "item10"

pop
pop
pop
length
print
