#!/bin/bash

while read adress
do 
	ping -c 3  ${adress} && echo "${adress} up" || echo "${adress} down"
done
