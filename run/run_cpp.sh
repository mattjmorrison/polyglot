#!/bin/bash
. ./colors.sh

section "C++ Hi"
step "Compile C++"
g++ ../languages/cpp/hi.cpp -o hi
step "Execute C++"
./hi
rm -rf hi

section "C++ Fibonacci"
step "Compile C++"
g++ ../languages/cpp/fibonacci.cpp -o fibonacci
step "Execute C++"
./fibonacci 16
rm -rf fibonacci
