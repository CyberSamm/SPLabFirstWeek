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

echo "Running AllFileNames_test.sh..."
./AllFileNames_test.sh 
if [ $? -ne 0 ]; then
	echo "AllFileNames_test.sh failed."
	$( exit 1 )
else
	echo "success!"
fi

echo "Running CheckingFiles_test.sh..."
./CheckingFiles_test.sh
if [ $? -ne 0 ]; then
        echo "CheckingFiles_test.sh failed."
        $( exit 1 )
else
        echo "success!"
fi

echo "Running CountLinesInFile_test.sh..."
./CountLinesInFile_test.sh
if [ $? -ne 0 ]; then
        echo "CountLinesInFile_test.sh failed."
        $( exit 1 )
else
        echo "success!"
fi

echo "Running ReverseNum_test.sh..."
./ReverseNum_test.sh
if [ $? -ne 0 ]; then
        echo "ReverseNum_test.sh failed."
        $( exit 1 )
else
        echo "success!"
fi

cd $curPos
