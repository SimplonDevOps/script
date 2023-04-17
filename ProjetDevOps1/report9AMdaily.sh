#!/bin/bash


#capture the path
place=$(pwd)
chmod a+x generates.py show_report_sale_of_a_day.sh

#create a Folder and go inside it: everyday the generates.py will be run to create a new .csv file. This Folder is to group all those .csv file
mkdir ReportData
cd ./ReportData 

#move the show_report_sale_of_a_day.sh to the Folder ReportData 
mv $place/show_report_sale_of_a_day.sh $place/ReportDat

#Find the .csv file has just created at 9AM and put it in a variable
YES_DAT=$(date --date=' 1 days ago' '+%m_%d_%Y')
yes_report=$(ls | grep $YES_DAT)

sudo crontab -e
#We are inside ReportData Folder, now create a .csv file automatically at 9AM daily 
09*** $place/generates.py 
#at 09:05, run automatically the show_report_sale_of_a_day.sh with the .csv file has just created at 9AM 
#Use the variable $yes_report as an argument to the bash file:
59***./$place/ReportData/show_report_sale_of_a_day.sh $yes_report | less
