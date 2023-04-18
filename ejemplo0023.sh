#!/usr/bin/env bash

echo FORMA 1
if whoami > nul; then
	echo "El usuario $whoami esta trabajando"
fi

echo FORMA 2 
if whoami; then	
	echo "El usuario $USER esta trabajando"
fi
