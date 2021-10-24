#!/bin/bash

TEST1=$(../CountLinesInFile.sh)
if [ "${TEST1}" = "No parameters found." ]; then
	echo "The first test passed successfully!"
else
	echo "Falied the first test."
	exit
fi

TEST2=$(../CountLinesInFile.sh a b)
if [ "${TEST2}" = "Too many arguments." ]; then
	echo "The second test passed successfully!"
else
	echo "Failed the second test."
	exit
fi

TEST3=$(../CountLinesInFile.sh unknownFile)
if [ "${TEST3}" = "No file with the such name." ]; then 
	echo "The third test passed successfully!"
else
	echo "Failed the third test."
	exit
fi

TEST4=$(../CountLinesInFile.sh regfile)
if [ "${TEST4}" = "14 regfile" ]; then
	echo "The fourth test passed successfully!"
else
	echo "Failed the fourth test."
	exit
fi
