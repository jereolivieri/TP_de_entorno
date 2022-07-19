#!/bin/bash

#Tengo que agarrar el texto y buscar las palabras que arranquen con mayus y sigan con minus

if [ $# -ne 1 ] #Si no tengo el archivo de lectura es medio difícil que pueda hacer algo, no?"
then
    echo "Che, te faltó el archivo querido o pusiste más de uno."
    exit 1
fi

patron="^[A-Z][a-z]+$"

for word in $(cat $1)
do
   if [[ $word =~ $patron ]]
   then
      echo $word
   fi
done

#Tengo que considerar el caso en donde las palabrass están luego de un punto, signo, etc?

exit 0
