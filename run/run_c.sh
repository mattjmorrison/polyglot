#!/bin/bash
echo "Compile C"
gcc ../languages/c/hi.c -o hi
echo "Execute C"
./hi

rm -rf hi
