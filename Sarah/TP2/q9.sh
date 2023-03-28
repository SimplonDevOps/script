#!/bin/bash

$1 #fichier de recherche
$2 # taille du fichier 

find /$1 -size -$2 -print
