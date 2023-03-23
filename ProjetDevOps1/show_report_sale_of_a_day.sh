#!/bin/bash
#File detail of the day:
# $1 is 'the' argument of this script when we run it on cron job
x=$1

#print the number of all tickets:
number=$(awk -F',' 'END{ print $1 }' $x)
echo Number of tickets: $number

#print the sale total of all the shops:
total_sales_all_shops=$(awk 'NR>1 { s+=$($4) } END{ print s }' $x)
echo Total sale of all shops: $total_sales_all_shops

#print the average of sale of the Brand:
average_sales_all_shop=$(( total_sales_all_shops / number ))
echo Average sales of all shops: $average_sales_all_shop

#print the total sale of each shop:
awk -F',' '{a[$3]+=$4;}END{for(i in a)print "shop " i", "a[i];}' $x
