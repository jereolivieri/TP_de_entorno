#!/bin/bash

#Tengo que encontrar la oración más larga, la más corta y el promedio

if [ $# -ne 1 ] #Si no tengo el archivo de lectura es medio difícil que pueda hacer algo, no?"
then
    echo "Che, te faltó el archivo querido."
    exit 1
fi

clean=$( cat $1 | sed 's/[.!?]  */&\n/g' ) #Acá leo con cat el archivo,
					 #y filtro para poder reempleazar los puntos o signos
					 #y siguen con un espacio por lo mismo, pero con una nueva línea

cont=0          #Inicio valores para conseguir lo que quiero
max=0
min=10000
carac=0

IFS=$'\n'               #IFS sirve para que el for itere por nuevas líneas y no por espacios
for sentence in $clean
do
   cont=$(($cont+1))    				#Contador para el promedio
   carac=$(($carac+$(echo "$sentence" | wc -m)-2))      #empiezo a contar, pero tengo que eliminar los últimos
							#2 espacios que se hacen después del final de la oración
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
