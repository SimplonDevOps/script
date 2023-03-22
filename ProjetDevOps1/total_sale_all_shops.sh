#!/bin/bash
x="ventes.csv"

awk '{ s+=$(NF==2) } END{ print s }' $x 