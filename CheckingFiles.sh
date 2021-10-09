#/bin/bash
# Prompt the user for a name of a file or directory 
# and report if it is a regular file, a directory.

if [ -z $1 ]; then
	echo "No parameters found."
elif [ $# -gt 1 ]; then
	echo "Too many arguments."
elif [ -e $1 ]; then
	if [ -d $1 ]; then
		echo "$1 is a directory."
	else
		echo "$1 is a regular file."
	fi
else
	echo "No file with the such name."
fi
