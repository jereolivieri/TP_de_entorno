#!/bin/bash

PS3="Adelante. Elegí, estoy segura que perderás. >>>"
echo "¿Qué ejercicio querés ejecutar?"
select opcion in "statsWords.sh" "statsUsageWords.sh" "findNames.sh" "statsSentences.sh" "blankLinesCounter.sh" "SALIR"
do
   case $REPLY in
   "statsWords.sh")
       ./statsWords.sh text.txt
       continue
       ;;
   "statsUsageWords.sh")
       ./statsUsageWords.sh texto.txt
       continue
       ;;
   "findNames.sh")
       ./findNames.sh texto.txt
       continue
       ;;
   "statsSentences.sh")
       ./statsSentences.sh text.txt
       continue
       ;;
   "blankLinesCounter.sh")
       ./blankLinesCounter.sh texto.txt
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
