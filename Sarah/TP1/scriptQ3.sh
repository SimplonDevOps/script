#!/bin/bash

if [ -e "$1" ]; then
	echo "Ce fichier "$1" existe."
else
	echo "ce fichier "$1" n'existe pas."
fi
