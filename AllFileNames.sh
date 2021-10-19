#!/bin/bash

traverse() {
	for file in $1/*; do
		echo $file

		if [ -d $file ]; then
			#if a directory is empty no need to traverse it.
			if [ -z "$(ls $file)" ]; then 
				continue
			else
				traverse $file
			fi
		fi
	done	
}

if [ -z $1 ]; then
	echo "No Parameters found."
elif [ -e $1 ]; then
	traverse $1
else
	echo "No file with the such name."
fi
