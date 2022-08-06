#!/bin/bash

if [ $# -ne 1 ] #Si no tengo el archivo de lectura es medio difícil que pueda hacer algo, no?"
then
    echo "Che, te faltó el archivo querido."
    exit 1
fi

echo "El archivo tiene $(grep -c '^$' $1) líneas blancas" #Uso una expresión regular facilita para checkear cuántas tengo

exit 0
