#!/bin/bash

reverse() {
	result=0
	n=$1
	while [ $n -gt 0 ]; do
		result=$(( $result * 10 ))

		result=$(( $result + $(( $n % 10 ))))
		n=$(( $n / 10))
	done

	echo $(( $result ))
}

if [ -z $1 ]; then
	echo "No Parameters found."
	exit
fi

if [ $# -gt 1 ]; then
	echo "Too many arguments."
	exit	
fi

re='^[0-9]+$'
if [[ $1 =~ $re ]]; then
	echo "The number in reverse order: $( reverse $1 )"
else
	echo "Not a number."
fi

