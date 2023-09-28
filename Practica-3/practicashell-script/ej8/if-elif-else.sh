#!/bin/bash
variable=11
if [ $variable -eq 10 ]; then
    echo "La variable es 10"
elif [ $variable -lt 10 ]; then
    echo "La variable es menor que 10"
else
    echo "La variable es mayor que 10"
fi
