#!/bin/bash

#Tengo que agarrar el texto y buscar las palabras que arranquen con mayus y sigan con minus

if [ $# -ne 1 ] #Si no tengo el archivo de lectura es medio difícil que pueda hacer algo, no?"
then
    echo "Che, te faltó el archivo querido o pusiste más de uno."
    exit 1
fi

clean=$( cat $1 | tr -d "[:punct:]" | tr " " "\n" ) #elimino todos los signos y demás cosas por nada para facilitar la lectura del archivo

patron="^[A-Z][a-z]+$" #armo un patron para agarrar las palabras que arrancan con alguna mayúsculas
                       # y siguen después con minúsculas

echo "Las palabras que se pueden considerar como nombres son:"
for word in $(echo $clean)          #empiezo a checkear todos las palabras en clean
do
   if [[ $word =~ $patron ]]
   then
      echo $word                    #imprimo las que coinciden con la expresión regular que quiero
   fi
done

exit 0
