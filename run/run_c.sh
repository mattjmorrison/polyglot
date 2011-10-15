#!/bin/bash

echo "== C Hi =="
echo "Compile C"
gcc ../languages/c/hi.c -o hi
echo "Execute C"
./hi
rm -rf hi

echo "== C Fibonacci 20 =="
echo "Compile C"
gcc ../languages/c/fibonacci.c -o fibonacci
echo "Execute C"
./fibonacci 20
rm -rf fibonacci
