#! /bin/bash

verifyroot()
{
if [ "$EUID" -ne 0 ]
then 
	echo "you are not in root"
else
	echo "you are running this script in ROOT"
exit
fi
}

verifyroot
