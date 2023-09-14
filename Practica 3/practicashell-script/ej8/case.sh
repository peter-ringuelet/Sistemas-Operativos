#!/bin/bash
opcion=$1
case $opcion in
    start) echo "Comenzando...";;
    stop) echo "Deteniendo...";;
    restart) echo "Reiniciando...";;
    *) echo "Opción inválida";;
esac
