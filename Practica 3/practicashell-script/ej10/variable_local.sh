#!/bin/bash
funcion_ejemplo() {
    local variable_local="Soy una variable local"
    echo $variable_local
}

funcion_ejemplo # Esto imprimirá "Soy una variable local"
echo $variable_local # Esto no imprimirá nada ya que la variable_local es solo local a la función
