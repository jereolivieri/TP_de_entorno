FROM ubuntu:20.04
MAINTAINER el pela que no es el profe

WORKDIR .
COPY . .

ENTRYPOINT ["./start.sh","/TP_de_entorno/texto.txt"]
