#!/bin/bash
if [ $# -eq 0 ]
then
	echo "tu n'a pas d'arguments"
elif [ -a $1 ]
then 
	echo "file exist"
else 
	echo "file don't exit"
fi
