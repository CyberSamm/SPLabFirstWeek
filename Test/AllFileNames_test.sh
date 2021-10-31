#!/bin/bash

TEST1=$(../AllFileNames.sh unknown_file)
if [ "${TEST1}" = "No file with the such name." ]; then
	echo "The first test passed successfully!"
else
	echo "Failed the first test."
	$( exit 1 )
fi
	
TEST2=$(../AllFileNames.sh)
if [ "${TEST2}" = "No Parameters found." ]; then
	echo "The second test passed successfully!"
else
	echo "Failed the second test."
	$( exit 1 )
fi

TEST3=$(../AllFileNames.sh Root)
expOutput="Root/firstRootChild
Root/firstRootChild/file1
Root/firstRootChild/file2
Root/firstRootChild/file3
Root/secondRootChild
Root/secondRootChild/child1
Root/secondRootChild/child2
Root/thirdRootChild
Root/thirdRootChild/child
Root/thirdRootChild/file"

if [ "${TEST3}" = "${expOutput}" ]; then
	echo "The third test passed successfully!"
else
	echo "Failed the third test."
	$( exit 1 )
fi
