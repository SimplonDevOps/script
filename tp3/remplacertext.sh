#!/bin/bash

read -p  "quelle est votre fichier?" var

if [ -a "$var" ]; then
    echo "$var exists."
	sleep 1 
#	sed -i 's/password=true/password=false/g' $var 
	sleep 1
	sed 's/password=false/password=mathys/g' $var
	sleep 1
#	sed -i 's/password=false/password=true/g' $var	

else 
	 echo "wrong"

fi
