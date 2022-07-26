#!/bin/bash

#Tengo que encontrar la oración más larga, la más corta y el promedio

if [ $# -ne 1 ] #Si no tengo el archivo de lectura es medio difícil que pueda hacer algo, no?"
then
    echo "Che, te faltó el archivo querido."
    exit 1
fi

cat $1 | tr "?" "\n" | tr "... " "...\n" | tr "!" "!\n" | tr "." ".\n" | tr -d " " > aux.txt #elimino todos los signos y demás cosas por nada para facilitar la lectura del archivo

#reemplacé el espacio por nada para que todas las oraciones estén pegadas y pueda contarlas (o eso voy a tratar)

#cat aux.txt

for word in $(cat aux.txt)
do
    echo $word
    echo "espacio"
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
done

rm aux.txt

exit 0
