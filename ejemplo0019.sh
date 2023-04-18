#!/usr/bin/env bash

miarchivo="vero.txt"
for var in $(cat $miarchivo); do
	echo " $var"
done