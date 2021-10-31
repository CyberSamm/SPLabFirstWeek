#!/bin/bash

TEST1=$(../ReverseNum.sh)
if [ "${TEST1}" = "No Parameters found." ]; then
	echo "The first test passed successfully!"
else
	echo "Falied the first test."
	exit
fi

TEST2=$(../ReverseNum.sh a 4)
if [ "${TEST2}" = "Too many arguments." ]; then
	echo "The second test passed successfully!"
else
	echo "Failed the second test."
	exit
fi

TEST3=$(../ReverseNum.sh 123)
if [ "${TEST3}" = "The number in reverse order: 321" ]; then 
	echo "The third test passed successfully!"
else
	echo "Failed the third test."
	exit
fi

TEST4=$(../ReverseNum.sh -123)
if [ "${TEST4}" = "The number in reverse order: -321" ]; then 
	echo "The fourth test passed successfully!"
else 
	echo "Failed the fourth test."
	exit
fi

TEST5=$(../ReverseNum.sh NaN)
if [ "${TEST5}" = "Not a number." ]; then
	echo "The fifth test passed successfully!"
else
	echo "Failed the fifth test."
	exit
fi


