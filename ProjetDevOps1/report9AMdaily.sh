#!/bin/bash


sudo crontab -e

place=$(pwd)
chmod a+x generates.py

#create a Folder: everyday the generates.py will be run to ceate a new .csv file. This Folder is to group all those .csv file
mkdir ReportData
cd ./ReportData 

#move the show_report_sales_of_a_day.sh to the Folder ReportData 
mv $place/show_report_sales_of_a_day.sh $place/ReportData

#create a .csv file automatically in the Report Folder at 9AM daily 
09*** $place/generates.py 


#Find the .csv file has just created at 9AM 
YES_DAT=$(date --date=' 1 days ago' '+%m_%d_%Y')
yes_report=$(ls | grep $YES_DAT)

#Run the show_report_sales_of_a_day.sh with the .csv file has just created at 9AM 
59***./$place/ReportData/show_report_sales_of_a_day.sh $yes_report


