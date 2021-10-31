#!/bin/bash

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
