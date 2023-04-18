#!/usr/bin/env bash

nombre1="LUIS"
nombre2="luis"

if [[ $nombre1 = $nombre2 ]]
then
	echo Son iguales
else
	echo Son distintos
fi

# MEJORADO

echo -n "ESCRIBA EL PRIMER NOMBRE?: "
read nombre3
echo -n "ESCRIBA EL SEGUNDO NOMBRE?: "
read nombre4

if [[ $nombre3 = $nombre4 ]]
then
	echo Son iguales
else
	echo Son distintos
fi