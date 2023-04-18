#!/usr/bin/env bash

usuario=vero
if grep $usuario /ect/passwd > nul;
then 
	echo "El usuario $usuario existe"
else
	echo "El usuario $usuario no existe"
fi
