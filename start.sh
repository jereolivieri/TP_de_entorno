#!/bin/bash

if [ $# -ne 1 ] #Si no tengo el archivo de lectura es medio difícil que pueda hacer algo, no?"
then
    echo "Che, te faltó el archivo querido."
    exit 1
fi

check=$( cat $1 | wc -w)

if [ $check -eq 0 ]
then
   echo "Pasame un archivo con al menos una palabra man"
   exit 1
fi

PS3="Adelante. Elegí, estoy segura que perderás. >>>"
echo "¿Qué ejercicio querés ejecutar?"
select opcion in "statsWords.sh" "statsUsageWords.sh" "findNames.sh" "statsSentences.sh" "blankLinesCounter.sh" "SALIR"
do
   case $opcion in
   "statsWords.sh")
       ./statsWords.sh $1
       continue
       ;;
   "statsUsageWords.sh")
       ./statsUsageWords.sh $1
       continue
       ;;
   "findNames.sh")
       ./findNames.sh $1
       continue
       ;;
   "statsSentences.sh")
       ./statsSentences.sh $1
       continue
       ;;
   "blankLinesCounter.sh")
       ./blankLinesCounter.sh $1
       continue
       ;;
   "SALIR")
       echo "Gracias, vuelva prontos." && break
       ;;
    *)
       echo "Flaco, no es tan dificil seleccionar bien..."
       continue
       ;;
    esac
done

exit 0
