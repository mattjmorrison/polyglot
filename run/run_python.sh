#!/bin/bash
. ./colors.sh

section "Python Hi"
python ../languages/python/hi.py

section "Python Fibonacci Tests"
cd ../languages/python
python -m unittest discover
cd ../../run

section "Python Fibonacci"
python ../languages/python/fibonacci.py 16

rm -rf *.pyo
rm -rf *.pyc
