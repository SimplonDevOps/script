#!/bin/bash

#generates.py is the argument of show_report_sale_of_a_day.sh

sudo crontab -e

place=$(pwd)
chmod a+x generates.py

#create a Folder: everyday the generates.py will be run to ceate a new .csv file. This Folder is to group all those .csv file
mkdir ReportData
cd ./ReportData 
09*** $place/generates.py 

