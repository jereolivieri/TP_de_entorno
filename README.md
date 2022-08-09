# TP_de_entorno

Hi mom! I'm using bash, GitHub and Docker!

El Dockerfile está hecho para que corra 'start.sh' leyendo como argumento el archivo 'texto.txt'. Si se ejecuta con

docker run -it -v PATH:/TP_de_entorno/texto.txt NAME

podemos modificar el texto para no tener que buildear 20 veces.

El programa start.sh utiliza los otros programas para resolver los ejercicios del trabajo práctico dependiendo de la opción que uno quiera:

1) statsWords.sh --> Indicador estadístico de longitud de palabras (la más corta, la más larga y el
promedio de longitud).
2) statsUsageWords.sh --> Indicador estadístico de uso de palabras, deben ser de al menos 4(cuatro)
letras.
3) findNames --> Identificación de nombres propios (aunque no sea exactamente un nombre propio)
4) statsSentences.sh --> Indicador estadístico de longitud de oraciones (la más corta, la más larga y el
promedio de longitud).
5) blankLinesCounter.sh --> contador de líneas en blanco
6) salir

El texto es 'La tragedia de Darth Plagueis', pero podés ponerle cualquier argumento. Si no tiene nada escrito, te va a avisar.

Si pones más de un archivo o no pones ninguno, te avisa. Los programas tienen esta opción para probarlos uno a uno, con un mensaje distinto
ya que para el menú lo cambié a último momento :).




