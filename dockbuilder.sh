#!/bin/bash

img=scripts
docker_name=test

docker build -t ${img} .
if [ $? -ne 0 ]; then
	echo "Something went wrong while building."
	exit 
fi

docker run --name ${docker_name} --rm ${img}
if [ $? -ne 0 ]; then
	echo "Something went wrong while running docker."
	exit 
fi

