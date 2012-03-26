#!/bin/bash
. ./colors.sh
cd ../languages/c/

section "C Hi"
step "Compile C"
gcc hi.c -o hi
step "Execute C"
./hi
rm -rf hi

cd fibonacci
section "C Fibonacci Tests"
step "Compile C"
make
step "Execute C"
./test
make clean


section "C Fibonacci"
step "Compile C"
gcc *.c -o cli
step "Execute C"
./cli 16
rm -rf cli
