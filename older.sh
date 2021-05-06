#!/bin/bash
# hashbang acts as interpreter

# store the first arguement passed in variable 
# for future check

variable=$1

# mkdir command to make a TEST directory
mkdir -p TEST

# go to TEST directory using change directory (cd) 
cd TEST

# to create files with a timestamp we use touch command with -t option
#file foo
touch -t 202103081800 foo 

#file goo
touch -t 202103081801 goo 

#file hoo
touch -t 202103081802 hoo 

# check the arguement if it is "older"
if [[ "$variable" == "older" ]]; 
then

	ls -t | tail -1
fi

# delete the files and directory after the operation
cd ..

# rm command
rm -rf TEST
