#!/bin/bash
for i in {1..100}; do
	echo "Para el $i el cuadrado es: $(expr $i \* $i)"
done
