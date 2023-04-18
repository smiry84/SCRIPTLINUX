#!/usr/bin/env bash

micarpeta=/home/veronica
if [ -d $micarpeta ];
then
	echo "Carpeta $micarpeta existe"
	cd $micarpeta
	ls
else
	echo "No hay archivo o directorio $micarpeta"
fi
