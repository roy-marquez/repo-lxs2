#!/bin/bash

DATOS=../hojasDatos

SALIDA_DATOS=$DATOS/datos_csv

mkdir $SALIDA_DATOS

M=0

for archivo in `find $DATOS -name "*.xls"`

do 
	echo "Procesando archivo $archivo"
	xls2cvs $archivo > $SALIDA_DATOS/dato-$M.csv
	let M=M+1
done 2>error1.log

M=0

for archivo in `find $SALIDA_DATOS -name "*.csv"`
	echo "Dando formato al archivo de datos: $archivo"
	cat $archivo | awk -F"\",\"" '{print $1 " " $2 " " $3 " " $4 " " $5`}' | grep -v Sensor | sed '1,$ s/"//g' > $SALIDA_DATOS/dato-$M.out
