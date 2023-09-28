#!/bin/bash
archivo="/path/a/un/archivo"
if [ -e "$archivo" ]; then
    echo "El archivo existe."
else
    echo "El archivo no existe."
fi
