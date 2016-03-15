#!/bin/bash

VAR1="algo:otro guia, paso, calle"

# Por defecto el Internal Field Separator es
#IFS=$' \n\t'
# Ahora lo cambiamos por :
IFS=:

for dato in $VAR1; do
	echo "Dato: $dato"
done

