#!/usr/bin/env bash

miarchivo="vero2.txt"
IFS=$';'
for var in $(cat $miarchivo); do
	echo " $var"
done