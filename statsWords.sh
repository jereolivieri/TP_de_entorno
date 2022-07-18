#!/bin/bash

if [ $# -ne 1 ] #Si no tengo el archivo de lectura es medio difícil que pueda hacer algo, no?"
then
    echo "Che, te faltó el archivo querido."
    exit 1
fi

clean=$( echo $1 | tr -d "[?]" ) #elimino todos los signos y demás cosas por nada para facilitar la lectura del archivo

cantidad=$( cat $1 | wc -w ) #Cuento la cantidad

max=0             #Inicio los contadores que voy a usar
cont=0
min=1

for word in $(cat $1)
do
  aux=$( echo $word | wc -m )
  cont=$(( $cont + $aux ))
  if [ $max -lt $( echo $word | wc -m ) ]
  then
    max=$( echo $word | wc -m )
    larga=$word
  elif [ $min -gt $( echo $word | wc -m ) ]
  then
    min=$( echo $word | wc -m )
    tiquita=$word
  fi
done

prom=$(($cont / $cantidad))

echo "La palabra más larga es $larga"
echo "El promedio de caracteres por palabras es $prom"
echo "La palabra más corta es $tiquita"

exit 0
