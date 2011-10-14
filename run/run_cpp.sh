#!/bin/bash
echo "Compile C++"
g++ ../sample.cpp -o sample
echo "Execute C++"
./sample
rm -rf sample
