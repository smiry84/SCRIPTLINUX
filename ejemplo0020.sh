#!/usr/bin/env bash

miarchivo="/etc/passwd"
IFS=$'\n'
for var in $(cat $miarchivo); do
	echo " $var"
done