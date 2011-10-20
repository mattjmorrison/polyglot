#!/bin/bash
echo "== Python Hi =="
python ../languages/python/hi.py
echo "== Python Fibonacci =="
python ../languages/python/fibonacci.py 16
rm -rf *.pyo
rm -rf *.pyc

