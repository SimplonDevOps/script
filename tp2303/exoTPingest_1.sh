#!/bin/bash

# importer le script python sur sa machine
#utiliser github - ficher en rax - renomme en .py - mettre à jour sa machine debian (sources list) avec commande wget et url github du fichier, télécharger
#placer dans un fichier txt. puis utiliser la ligne $ pip install -r requirements.txt pour avoir le fichier csv de données


#calcul du CA total en excluant les virgules pour garder que la colonne 7 qui est le montant des tickets puis le placer ds un fichier CAmagasin


totalvente="ventes.csv"

awk '{print $5}' FS="," ventes.csv > CAmagasins.csv


#somme du chiffre d'affaires

awk '{ sum += $1 } END { print SUM }' CAmagasins.csv


 



 
