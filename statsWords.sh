#!/bin/bash

# En este hay que obtener la mayor cantidad de caracteres en una palabra, la mínima y el promedio

if [ $# -ne 1 ] #Si no tengo el archivo de lectura es medio difícil que pueda hacer algo, no?"
then
    echo "Che, te faltó el archivo querido."
    exit 1
fi

clean=$( cat $1 | tr -d "[:punct:]" | tr " " "\n" ) #elimino todos los signos y demás cosas por nada para facilitar la lectura del archivo

cantidad=$( echo $clean | wc -w ) #Cuento la cantidad

max=0             #Inicio los contadores que voy a usar
cont=0
min=10

for word in $(echo $clean)                           #arranco a iterar por las palabras del texto y checkear lo que necesito
do
  aux=$( echo -n $word | wc -m )                     #hice una variable para probar (seguramente se puede poner en la suma, pero no me salió y era más fácil con la variable)
  cont=$(( $cont + $aux ))                           #cuento para el promedio
  if [ $max -lt $( echo -n $word | wc -m ) ]         #el if para obtener el máximo por comparación
  then
    max=$( echo -n $word | wc -m )
  elif [ $min -gt $( echo -n $word | wc -m ) ]       #el if para obtener el mínimo por comparación
  then
    min=$( echo -n $word | wc -m )
  fi
done

prom=$(($cont / $cantidad))                          #calculo el promedio

echo "La palabra más larga tiene $max caracteres."
echo "El promedio de caracteres por palabras es $prom."
echo "La palabra más corta tiene $min caracter/es."

exit 0
