#!/bin/bash
cd ../languages/c/

echo "== C Hi =="
echo "Compile C"
gcc hi.c -o hi
echo "Execute C"
./hi
rm -rf hi

cd fibonacci
echo "== C Fibonacci Tests =="
echo "Compile C"
make
echo "Execute C"
./test
make clean