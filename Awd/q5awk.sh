#!/bin/bash

awk -F, 'BEGIN{ print "A","B","C","D","E" } END{ print NR } { print $1 $2 $3 $4 $5 }' fichier2.txt | column -t

