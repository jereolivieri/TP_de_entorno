#!/bin/bash

### Por ahora tengo el problema que sólo toma una y no todas las palabras con la misma cantidad de palabras

if [ $# -ne 1 ] #Si no tengo el archivo de lectura es medio difícil que pueda hacer algo, no?"
then
    echo "Che, te faltó el archivo querido."
    exit 1
fi

clean=$( echo $1 | tr -d "?" ) #elimino todos los signos y demás cosas por nada para facilitar la lectura del archivo

cantidad=$( cat $1 | wc -w ) #Cuento la cantidad

max=0             #Inicio los contadores que voy a usar
cont=0
min=1

for word in $(cat $1)                             #arranco a iterar por las palabras del texto y checkear lo que necesito
do
  aux=$( echo $word | wc -m )                     #hice una variable para probar (seguramente se puede poner en la suma, pero no me salió y era más fácil con la variable)
  cont=$(( $cont + $aux ))                        #cuento para el promedio
  if [ $max -lt $( echo $word | wc -m ) ]         #el if para obtener el máximo por comparación
  then
    max=$( echo $word | wc -m )
    larga=$word
  elif [ $min -gt $( echo $word | wc -m ) ]       #el if para obtener el mínimo por comparación
  then
    min=$( echo $word | wc -m )
    tiquita=$word
  fi
done

prom=$(($cont / $cantidad))                       #calculo el promedio

echo "La palabra más larga es $larga"
echo "El promedio de caracteres por palabras es $prom"
echo "La palabra más corta es $tiquita"

exit 0
