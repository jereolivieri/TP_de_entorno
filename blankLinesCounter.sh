#!/bin/bash

if [ $# -ne 1 ] #Si no tengo el archivo de lectura es medio difícil que pueda hacer algo, no?"
then
    echo "Che, te faltó el archivo querido."
    exit 1
fi

grep -c "^$" $1

exit 0
