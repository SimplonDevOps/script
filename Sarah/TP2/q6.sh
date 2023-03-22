#!/bin/bash 

age=$1
case $1 in
[0-9]|1[0-7])
	echo "tu es mineur";;
[1-9]|[0-9])
	echo "tu es majeur";;
18)
	echo "tu as 18 ans" ;;
*)
	echo "entrez un age";;

esac 

