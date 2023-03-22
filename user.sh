#!/bin/sh

find /home/$1 -type f -user $1 -print
