#!/bin/bash

findPath() {
	file="Test"
	res=$( find -name $file )
	path="Test"
	dir="../"

	if [ ! -z $res ]; then
		echo $res
		exit
	fi

	while [ -z $res ]; do
		path="../"$path
		res=$( find $dir -name $file )
		dir="../"$dir
	done
	echo $path
}


curPos=$(pwd)
cd $(findPath)

TEST1=$(../CheckingFiles.sh)
if [ "${TEST1}" = "No parameters found." ]; then
	echo "The first test passed successfully!"
else
	echo "Falied the first test."
	$( exit 1 )
fi

TEST2=$(../CheckingFiles.sh unknown_file)
if [ "${TEST2}" = "No file with the such name." ]; then
	echo "The second test passed successfully!"
else
	echo "Failed the second test."
	$( exit 1 )
fi

TEST3=$(../CheckingFiles.sh a b)
if [ "${TEST3}" = "Too many arguments." ]; then 
	echo "The third test passed successfully!"
else
	echo "Failed the third test."
	$( exit 1)
fi

TEST4=$(../CheckingFiles.sh Root)
if [ "${TEST4}" = "Root is a directory." ]; then 
	echo "The fourth test passed successfully!"
else 
	echo "Failed the fourth test."
	$( exit 1 )
fi

TEST5=$(../CheckingFiles.sh regfile)
if [ "${TEST5}" = "regfile is a regular file." ]; then
	echo "The fifth test passed successfully!"
else
	echo "Failed the fifth test."
	$( exit 1 )
fi

cd $curPos

