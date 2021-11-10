#!/bin/bash

if [ -e build/hello ]; then
	build/hello
else
	echo "Executable file does not exist."
fi
