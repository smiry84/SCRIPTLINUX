#!/usr/bin/env bash

echo Hoy como estas
edad=20
echo Creo que tienes $edad años
echo -e "Esta \nfrase \nse \nmostrará \npalabra \npor \npalabra \nen \nuna \nlinea \ndistinta \ncada \npalabra"
echo -e "Suprimir lo que viene a continuacion \cel salto de linea"
echo Imprimir todos los ficheros y parpetas a modo de comando ls
echo *
echo Imprimir todos los ficheros de un formato en concreto
echo *.sh
echo "Esta frase se direcciona a un archivo donde queda grabado" >> salvar.txt
echo "Esto que sigue se añade el archivo" >> salvar.txt
echo -n "Omitimos el salto de linea"
