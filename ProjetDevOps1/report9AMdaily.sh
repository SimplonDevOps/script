#!/bin/bash

#generates.py is the argument of show_report_sale_of_a_day.sh

sudo crontab -e
09*** /home/camchau/ProjetDevOps1/show_report_sales_of_a_day.sh generates.py | less
