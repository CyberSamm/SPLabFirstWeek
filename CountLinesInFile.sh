#!/bin/bash

if [ -z $1 ]; then
	echo "No parameters found."
elif [ $# -gt 1 ]; then
	echo "Too many arguments."
elif [ -e $1 ]; then
	wc -l $1
else
	echo "No file with the such name."
fi
