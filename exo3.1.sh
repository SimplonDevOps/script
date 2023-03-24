#!/bin/bash


if grep "password=true" $1
then
sed -i 's/password=true/password=false/g' $1
echo "true ==> false"
elif grep "password=false" $1
then
    sed -i 's/password=false/password=true/g' $1
echo "false ==> true"
else 
echo "ni l'un ni l'autre"
fi
