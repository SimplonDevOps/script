 Welcome to my first DevOps project.

 1. Run the report9AMdaily.sh to create a new cron job
Everyday at 9AM, a report of the sales will be putout on the screen automatically.
The report shows the number of all tickets (all shops combine), the total sales of all shops, the sale of each shop and the average sale of all shops.

2. Inside the report9AMdaily.sh: "generate.py" is an argument of show_report_of_a_day.sh file : 
 09*** [..]./show_report_of_a_day.sh generate.py 
 
3. generate.py is a Python file to call data out and create a file .csv (the name of this file .csv has the detail of time WHEN it be created - time, date, month, year..)
This .csv file shows the detail of the sale: each payment from which customer in which shop 
Python packages used in generate.py: Look at requirements.txt file  

4. There is an .csv file example in this folder: ventes.csv


END.
