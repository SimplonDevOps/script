#!/bin/sh

while read adresse
do
	ping -c 3 ${adresse} && echo "${adresse} up" || echo "${adresse} down"
done
