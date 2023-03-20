#!/bin/bash
if [ -z $1 ]
then
echo "ERREUR: Argument: Not Found"
echo "Example ./q6Macus.sh 9"
exit 1

if [ $1 -le 18 ]
then 
x=$1
fi

case $1 in
($x) echo "Mineur";;
*) echo "Majeur";;
esac