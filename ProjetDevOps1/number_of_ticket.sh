#!/bin/bash
x="ventes.csv"
awk -F',' 'END{ print $1 }' $x