#!/bin/bash

if [ $1 -le 18 ]
then 
x=$1
fi

case $1 in
($x) echo "Mineur";;
*) echo "Majeur";;
esac