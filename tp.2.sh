#!/bin/bash



#faire le total des chiffres d'affaires




awk '{ sum += $1 } END { print sum }' CAmagasins.csv


