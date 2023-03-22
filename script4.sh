#!/bin/sh
echo "entrez un nombre"
read reply

if [ $reply -lt 5 ]
	then
		echo "nombre inférieur à 5"
fi

if [ $reply -eq 5 -a $reply -lt 10 ]
	then
		echo "nombre compris entre 5 et 10"
fi

if [ $reply -gt 10 ]
	then
		echo "nombre supérieur à 10"
fi
	

