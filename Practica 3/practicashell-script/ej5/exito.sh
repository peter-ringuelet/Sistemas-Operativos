#!/bin/bash
# Supongamos que hay una condición que verifica si un archivo existe
if [ -e "archivo.txt" ]; then
    echo "El archivo existe"
    pwd
    ls
    exit 0
else
    echo "El archivo no existe"
    exit 1
fi
