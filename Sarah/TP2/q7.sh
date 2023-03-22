#!/bin/bash

x=$(find /$1 -mmin +10 | fgrep "$1" )

if [ -d "$x" ]
then 
	echo "$x"
else
	echo "directory doesn't exist"
fi

