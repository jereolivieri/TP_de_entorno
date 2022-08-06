#!/bin/bash



PS3="Adelante. Elegí, estoy segura que perderás. >>>"
echo "¿Qué ejercicio querés ejecutar?"
select opcion in "statsWords.sh" "statsUsageWords.sh" "findNames.sh" "statsSentences.sh" "blankLinesCounter.sh" "SALIR"
do
   case $REPLY in
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

exit 0
