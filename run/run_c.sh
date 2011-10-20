#!/bin/bash
cd ../languages/c/

echo "== C Hi =="
echo "Compile C"
gcc hi.c -o hi
echo "Execute C"
./hi
rm -rf hi

echo "== C Fibonacci =="
echo "Compile C"
gcc fibonacci.c -o fibonacci
echo "Execute C"
./fibonacci 16
rm -rf fibonacci