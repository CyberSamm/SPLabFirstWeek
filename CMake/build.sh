#!/bin/bash

./clean.sh
mkdir build
cd build
cmake ..
make
./hello
