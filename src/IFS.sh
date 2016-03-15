#!/bin/bash

VAR1="algo:otro guia, paso, calle"

# Por defecto el Internal Field Separator es
#IFS=$' \n\t'
# Realizar la prueba con dos delimitadores ":" y ","
IFS=:,

for dato in $VAR1; do
	echo "Dato: $dato"
done

