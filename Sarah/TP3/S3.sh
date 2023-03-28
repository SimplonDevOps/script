#!/bin/bash

#-n  == suppress print of pattern space

sed -n '1p' Text.txt

#-i == copie/double la ligne

sed -i '1p'  Text.txt

#sans option == affiche tous le text

sed '1p'  Text.txt
