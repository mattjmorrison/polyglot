#!/bin/bash
echo "Compile C"
gcc ../sample.c -o sample
echo "Execute C"
./sample

rm -rf sample
