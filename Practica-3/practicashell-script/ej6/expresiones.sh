#!/bin/bash
a=10
b=20
suma=$(expr $a + $b)
echo "La suma es: $suma"
cadena="hola"
longitud=${#cadena}
echo "$cadena tiene un a longitud de $longitud"
