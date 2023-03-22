#!/bin/bash

awk -F',' '{ print $2 "   " $3 }' fichier3.txt
