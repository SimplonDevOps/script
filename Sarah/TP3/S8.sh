#!/bin/bash

#Variable NR or "Number of records" = numérote les collones

awk '{print NR,$0}' Text3.txt

#Variable NF = nombre de mot dans chaque ligne

awk '{print NF}' Text3.txt

#Variable END = 

awk 'END { print "Found EOF" }'
