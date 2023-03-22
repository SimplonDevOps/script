#!/bin/sh
ls $1 -l
find $1 -mmin -10
exit 0

