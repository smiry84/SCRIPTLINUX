#!/usr/bin/env bash

if [[ 2 -ne 3 ]]
then
	echo "2 es distinto a 3"
else
	echo "2 es igual a 3"
fi

# MEJORA

echo -n "Escriba un numero?: "
read numero1
echo -n "Escriba otro numero?: "
read numero2

if [[ $numero1 -ne $numero2 ]]
then
	echo "$numero1 es distinto a $numero2"
else
	echo "$numero1 es igual a $numero2"
fi
