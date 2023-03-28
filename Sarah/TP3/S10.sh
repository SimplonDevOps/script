#!/bin/bash

awk 'BEGIN{print "COL1\COL2\COL3"} {print} END{print "Nombr de lignes:", NR}' Text2.txt
