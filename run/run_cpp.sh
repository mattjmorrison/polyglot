#!/bin/bash
echo "== C++ Hi =="
echo "Compile C++"
g++ ../languages/cpp/hi.cpp -o hi
echo "Execute C++"
./hi
rm -rf hi

echo "== C++ Fibonacci =="
echo "Compile C++"
g++ ../languages/cpp/fibonacci.cpp -o fibonacci
echo "Execute C++"
./fibonacci 16
rm -rf fibonacci
