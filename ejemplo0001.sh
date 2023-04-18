#!/usr/bin/env bash

if [ 2 -gt 1 ]
then
	echo "2 es mayor que 1"
else
	echo "2 no es mayor que 1"
fi

# MEJORA

echo -n "Escriba un numero?: "
read numero1
echo -n "Escriba otro numero?: "
read numero2

if [ $numero1 -gt $numero2 ]
then
	echo "$numero1 es mayor que $numero2"
else
	echo "$numero1 no es mayor que $numero2"
fi
