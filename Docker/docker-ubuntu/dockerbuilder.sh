#!/bin/bash

img=my-ubuntu
docker_name=my_ubuntu1

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

