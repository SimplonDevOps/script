#!/bin/bash

if [ $1=="plus" ];
then
	find . -mmin +10

elif [ $1=="--plus" ];
then
	find . -mmin -10
else
	echo "argument 1 must be --moins or --plus"
fi 
