#!/bin/bash

for file in *; do
	if [ -f $file ]; then
		echo "$file" | tr 'a-zA-Z' 'A-Za-z' | tr -d 'Aa'
	fi
done
