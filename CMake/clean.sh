#!/bin/bash

if [ -e build ]; then
	if [ -d build ]; then
		rm -r build;
		echo "Cleared."
	else
		echo "build is not a directory."
		
	fi 
else
	echo "build does not exist."
fi
