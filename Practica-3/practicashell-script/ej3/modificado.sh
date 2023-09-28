#!/bin/bash
echo "Introduzca el nombre de un directorio:"
read dir
echo "Contenido de $dir:"
ls /$dir

echo "Su directorio personal es:"
echo $HOME

echo "Espacio libre en disco:"
df -h
