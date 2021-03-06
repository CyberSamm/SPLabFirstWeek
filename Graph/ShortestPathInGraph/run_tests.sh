#!/bin/bash

findPath() {
	file="my_tests"
	res=$( find -name $file )
	path="my_tests"
	dir="../"

	if [ ! -z "$res" ]; then
		echo $res
		exit
	fi

	while [ -z "$res" ]; do
		path="../"$path
		res=$( find $dir -name $file )
		dir="../"$dir
	done
	echo $path
}


curPos=$(pwd)
cd $(dirname $(findPath))

./run.sh build/rand

./run.sh build/cycle
./run.sh build/dijkstra 
cd my_tests/
if [[ ! -e build ]] || [[ ! -d build ]]; then
    echo "At first build tests."
	exit 1
fi
build/cycle_test 
cd ../

./run.sh build/matrix
./run.sh build/dijkstra 
cd my_tests/
build/matrix_test 
cd ../

cd $curPos
