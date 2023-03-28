#!/bin/bash


if [ $# -eq 0 ]
then
	echo "tp3 usage:tp3<argument>"
elif [ -d $1 ]
then
	echo "exit"
else
	echo "no exit"
fi


