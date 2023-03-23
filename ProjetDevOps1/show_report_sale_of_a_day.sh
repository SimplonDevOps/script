#!/bin/bash
#File detail of the day:
# $1 is 'the' argument of this script when we run it on cron job
x=$1

#check if we have any bussiness yesterday
if [ -z $x ] 
then
    echo "We did not sale anything yesterday or this is an ERROR: Problem of call out data"
    exit 1
fi 

#print DATE of data
YES_DAT=$(date --date=' 1 days ago' '+%d/%m/%Y')
echo  REPORT of bussiness  $YES_DAT

#print the number of all tickets:
number=$(awk -F',' 'END{ print $1 }' $x)
echo $number bills

#print number of customers:
total_number_customers=$(awk -F',' 'NR>1 {a[$5]+=$4;}END{for(i in a)print "customer ID "i":"a[i]" Dollars";}' $x | wc -l)
echo $total_number_customers customers 

#print kind of payment:
payment_visa=$(grep -c 'visa' $x)
payment_espece=$(( number - payment_visa ))
echo $payment_visa payments by visa card
echo $payment_espece payments by cash

#print the number of shops that could sell something yesterday
z=$(awk -F',' 'NR>1 {a[$3]+=$4;}END{for(i in a)print "Customer " i": "a[i]" Dollars";}' $x | wc -l)
echo $z shops did get bussiness

#print the sale total of all the shops:
total_sales_all_shops=$(awk 'NR>1 { s+=$($4) } END{ print s }' $x)
echo $total_sales_all_shops Dollars: Total sales of all shops

#print average sale of each shop chiffre d'affaire de chaque magasin
average_sales_each_shop=$(( total_sales_all_shops / z ))
echo $average_sales_each_shop Dollars: Average sale per shop 

#print the average of how many money that the custom pay each time:
average_sales_all_shop=$(( total_sales_all_shops / number ))
echo $average_sales_all_shop Dollars: average of bill  

#print total sale of each shop:
echo Total sale of each shop:
awk -F',' 'NR>1 {a[$3]+=$4;}END{for(i in a)print "shopID " i": "a[i]" Dollars";}' $x | column -t 

