#!/bin/bash
x="ventes.csv"
number=$(awk -F',' 'END{ print $1 }' $x)
echo Number of tickets: $number
total_sales_all_shops=$(awk '{ s+=$(NF==2) } END{ print s }' $x)
echo Total sale of all shops: $total_sales_all_shops
average_sales_all_shop=$(( total_sales_all_shops / number ))
echo Average sales of all shops: $average_sales_all_shop
