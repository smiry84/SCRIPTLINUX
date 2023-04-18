#!/usr/bin/env bash

if [[ 4 -gt 3 && 4 -lt 5 ]];
then
	echo "4 esta entre 3 y 5"
else
	echo "4 no esta entre 3 y 5"
fi

# MEJORA
echo -n "Dame un numero entre 1 y el 10: "
read numero

if [[ $numero -gt 1 && $numero -lt 10 ]];
then
	echo "$numero esta entre 1 y 10"
else
	echo "$numero no esta entre 1 y 10"
fi