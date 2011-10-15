#!/bin/bash
echo "== C++ Hi =="
echo "Compile C++"
g++ ../languages/cpp/hi.cpp -o hi
echo "Execute C++"
./hi
rm -rf hi

echo "== C++ Fibonacci 20 =="
echo "Compile C++"
g++ ../languages/cpp/fibonacci.cpp -o fibonacci
echo "Execute C++"
./fibonacci 20
rm -rf fibonacci
