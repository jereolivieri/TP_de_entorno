#!/bin/bash

# El programa tiene que considerar las palabras que tienen 4 letras como mínimo
# y hacer un top 10 de las palabras más usadas

if [ $# -ne 1 ] #Si no tengo el archivo de lectura es medio difícil
then
    echo "Che, te faltó el archivo querido."
    exit 1
fi

clean=$( cat $1 | tr -d "[:punct:]" | tr " " "\n" ) #elimino todos los signos y demás cosas por nada para facilitar la lectura del archivo

# Ahora filtro y guardo en un archivo las palabras que tengan más de 4 caracteres

for word in $clean
do
   if [ $( echo -n $word | wc -m ) -ge 4 ]
   then
       echo $word >> aux.txt
   fi
done

# sort aux.txt ==> me ordena las palabras del texto, agrupándolas
# uniq -c ==> cuenta cuántas veces seguidas se repiten (para eso lo ordené antes)
# sort -nr ==> me ordena del mayor a menor (-n las ordena de menor a mayor y el -r lo da vuelta)
# head -n 10 me muestra las primeras diez

top=$( sort aux.txt | uniq -c | sort -nr | head -n 10 )

rm aux.txt

# top está formada por pares: primero la cantidad de veces que se repite y después la palabra

#Voy a eliminar los números (ocurrencia) de las palabras y después ponerlo en el top

clean_top=$( echo $top | tr -d "[:digit:]" )

#echo $clean_top

podio=0

echo "Las palabras más utilizadas en 'La tragedia de Darth Plagueis' son:"

for i in $clean_top
do
   podio=$(($podio+1))
   echo $podio $i
done

exit 0
