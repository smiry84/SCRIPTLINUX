#!/usr/bin/env bash

touch /root/prueba
if [ $? -eq 0 ];
then
	echo "Se ha creado el fichero"
else
	echo "No se ha creado el fichero"
fi
