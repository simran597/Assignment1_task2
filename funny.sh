#!/bin/bash

# simple snippet to check if arguement is supplied or not
if [ -z "$1" ];
then
	echo "This is NOT funny"
	exit 1
else
	echo "This is funny"
fi
