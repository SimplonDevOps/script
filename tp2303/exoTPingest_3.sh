#!/bin/bash


#effacer la première ligne

sed -n '1d' CAmagasins.csv 

#commande pour le chiffre d'affaire moyen

awk 'BEGIN {sum=0} {sum+=$1} END {print sum/NR}' CAmagasins.csv > resultat.txt
 
