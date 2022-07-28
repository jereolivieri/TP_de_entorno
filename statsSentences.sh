#!/bin/bash

#Tengo que encontrar la oración más larga, la más corta y el promedio

if [ $# -ne 1 ] #Si no tengo el archivo de lectura es medio difícil que pueda hacer algo, no?"
then
    echo "Che, te faltó el archivo querido."
    exit 1
fi

clean=$( cat $1 | sed 's/[.!?]  */&\n/g' )

cont=0
max=0
min=10000
carac=0

IFS=$'\n'
for sentence in $clean
do
#    echo $sentence
#    echo "espacio"
#    echo $(echo "$sentence" | wc -m)
   cont=$(($cont+1))
   carac=$(($carac+$(echo "$sentence" | wc -m)-2))
   if [ $(($(echo "$sentence" | wc -m)-2)) -gt $max ]
   then
       max=$(($(echo "$sentence" | wc -m)-2))
       larga=$(echo $sentence)
   elif [ $(($(echo "$sentence" | wc -m)-2)) -lt $min ]
   then
       min=$(($(echo "$sentence" | wc -m)-2))
       corta=$(echo $sentence)
   fi
done

prom=$(($carac/$cont))

echo "La oración más larga tiene $max caracteres y es '$larga'"
echo "La oración más corta tiene $min caracteres y es '$corta'"
echo "El promedio de caracteres por oración es $prom"

exit 0
