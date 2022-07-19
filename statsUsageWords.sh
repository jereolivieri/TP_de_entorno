#!/bin/bash

#Palabras a considerar tienen que tener 4 letras mínimo
#voy a trabajar con el mismo texto, pero tengo que arreglarlo igual que en el ej1
#cuando tenga consulta lo haré jejejeje

if [ $# -ne 1 ] #Si no tengo el archivo de lectura es medio difícil
then
    echo "Che, te faltó el archivo querido."
    exit 1
fi

#Acá pondría el clean... SI SUPIERA CÓMO SE HACE

top1=1
top2=1
top3=1
top4=1
top5=1
top6=1
top7=1
top8=1
top9=1
top10=1

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
