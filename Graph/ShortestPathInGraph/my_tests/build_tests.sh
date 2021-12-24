#!/bin/bash

./clean.sh
if [[ ! -e build ]] || [[ ! -d build ]]; then
    mkdir build;
fi
cd build
cmake -DCMAKE_RULE_MESSAGES:BOOL=OFF .. 
make --no-print-directory
