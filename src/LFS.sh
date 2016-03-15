#!/bin/bash

VAR1="algo:otro guia, paso, calle"

#IFS=:

for dato in $VAR1; do
	echo "Dato: $dato"
done

