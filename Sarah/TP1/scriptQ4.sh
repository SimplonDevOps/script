#!/bin/bash

read -p "entrez un nombre" nombre

if [ $nombre -lt "5" ]
then
	echo "votre nombre est inférieur à 5"
elif [ $nombre -lt "10" ]
then
	echo "le nombre est compris entre 5 et 10"
else
	echo "le nombre est supérieur à 10"
fi
