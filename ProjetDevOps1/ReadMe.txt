 Welcome to my first DevOps project.

 1. Run the report9AMdaily.sh to create a new cron job
Daily at 9AM, a report of the sales will be putout on the screen automatically.
The report shows the business through out many shops (details such as the number of bills (all shops combine), the total sales of all shops, the sale of each shop and the average sale of all shops...)


2. Command line inside the report9AMdaily.sh: "generate.py" is an argument of show_report_of_a_day.sh file : 
 09*** [..]./show_report_of_a_day.sh generate.py [..]
 It shows the report by less command, so you can see the report in format page by page.
 If you want to quit the report quickly, press q
 
 
3. generate.py is a Python file to call data out and create a file .csv (the name of this .csv file has the detail of time WHEN it be created - time, date, month, year)"
"generate.py" set datetime up as "days=1" so the .csv file will show only data of 1 day from the moment the python file be called (ex: 9AM last day to 9AM today).

This .csv file shows the detail of the sale: each payment from which customer in which shop. There is an example of this .csv file in this project folder: ventes.csv

Python packages used in generate.py (pandas, numpy...): Please find in requirements.txt file  


4. You can test one part of my project by running only file show_report_of_a_day.sh with argument ventes.csv 


END.
