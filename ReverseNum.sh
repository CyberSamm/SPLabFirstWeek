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

reverseForNeg() {
	n=$1
	n=$(( $n * -1 ))
	echo $(( $(  reverse $n ) * -1 ))

}

if [ -z $1 ]; then
	echo "No Parameters found."
	exit
fi

if [ $# -gt 1 ]; then
	echo "Too many arguments."
	exit	
fi

pattern='[+-]?[0-9]+'
if [[ $1 =~ $pattern ]]; then
	if (( $1 < 0 )); then
		echo "The number in reverse order: $( reverseForNeg $1 )"
	else
		echo "The number in reverse order: $( reverse $1 )"
	fi
else
	echo "Not a number."
fi

