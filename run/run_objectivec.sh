#!/bin/bash
cd ../languages/objectivec/

echo "== Objective C Hi =="
echo "Compile Objective C"
gcc hi.m -o hi
echo "Execute Objective C"
./hi
rm -rf hi

echo "== Objective C Fibonacci =="
echo "Compile Objective C"
gcc fibonacci.m -o fibonacci
echo "Execute Objective C"
./fibonacci 16
rm -rf fibonacci