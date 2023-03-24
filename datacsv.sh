#!/bin/bash

sudo crontab -e 

* 9 * * * /home/mathys/projet_pipeline/generatescsv/datacsv.sh

#  date d'aujourd'hui
today=$(date +%Y-%m-%d)
#recuère le output 
python3 /home/mathys/projet_pipeline/generatescsv/generate.py

cd /home/mathys/projet_pipeline/generatescsv/

fichierdujour=$(ls | grep "$today") 




