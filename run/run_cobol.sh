#!/bin/bash
. ./colors.sh

section "COBOL Hi"
cobc -x -o hi ../languages/cobol/hi.cob
./hi
rm -rf hi

section "COBOL Fibonacci Tests"
cd ../languages/cobol/fibonacci/
cobc -c fibonacci.cob
cobc -x -o tests fibonacci_tests.cob fibonacci.o
./tests
rm -rf fibonacci.o
rm -rf tests

section "COBOL Fibonacci"
cobc -c fibonacci.cob
cobc -x -o run cli.cob fibonacci.o
./run 16
rm -rf run