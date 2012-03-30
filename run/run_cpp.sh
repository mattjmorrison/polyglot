#!/bin/bash
. ./colors.sh

section "C++ Hi"
step "Compile C++"
g++ ../languages/cpp/hi.cpp -o hi
step "Execute C++"
./hi
rm -rf hi

cd ../languages/cpp/fibonacci
section "C++ Fibonacci Tests"
make
make clean
rm -rf test

section "C++ Fibonacci"
step "Compile C++"
g++ cli.cpp fibonacci.cpp -o cli
step "Execute C++"
./cli 16
rm -rf cli
