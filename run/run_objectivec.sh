#!/bin/bash
. ./colors.sh
cd ../languages/objectivec/

section "Objective C Hi"
step "Compile Objective C"
gcc hi.m -o hi
step "Execute Objective C"
./hi
rm -rf hi

section "Objective C Fibonacci"
step "Compile Objective C"
gcc fibonacci.m -o fibonacci
step "Execute Objective C"
./fibonacci 16
rm -rf fibonacci