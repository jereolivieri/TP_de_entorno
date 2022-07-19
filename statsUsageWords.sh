#!/bin/bash

#Palabras a considerar tienen que tener 4 letras mínimo
#voy a trabajar con el mismo texto, pero tengo que arreglarlo igual que en el ej1
#cuando tenga consulta lo haré jejejeje

if [ $# -ne 1 ] #Si no tengo el archivo de lectura es medio difícil qu>then
    echo "Che, te faltó el archivo querido."
    exit 1
fi

#Acá pondría el clean... SI SUPIERA CÓMO SE HACE

for word in $1
do
   if [ $($word | wc -m) -ge 4]
   then
       $word > aux.txt
   fi
done

aux=$(cat aux.txt)

for word in $aux
do
   
done

rm aux.txt

exit 0
