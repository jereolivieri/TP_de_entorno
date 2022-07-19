#!/bin/bash

#Tengo que encontrar la oración más larga, la más corta y el promedio

if [ $# -ne 1 ] #Si no tengo el archivo de lectura es medio difícil que pueda hacer algo, no?"
then
    echo "Che, te faltó el archivo querido."
    exit 1
fi

clean=$( cat $1 | tr "? " "?\n" | tr "... " "...\n" | tr "! " "!\n" | tr ". " ".\n" | tr " " "_" ) #elimino todos los signos y demás cosas por nada para facilitar la lectura del archivo

echo $clean

max=0
min=10
cont=0

#for word in $(echo $clean)
#do
#    echo $word
#   cont=$($cont+1)
#   if [ $($word | wc -m) -gt max ]
#   then
#       max=$($word | wc -m)
#       larga=$word
#   elif [ $(word | wc -m) -lt min ]
#   then
#       min=$($word | wc -m)
#       corta=$word
#   fi
#done

exit 0
