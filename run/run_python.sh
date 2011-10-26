#!/bin/bash
echo "== Python Hi =="
python ../languages/python/hi.py
echo "== Python Fibonacci Tests =="
cd ../languages/python
python -m unittest discover
cd ../../run
echo "== Python Fibonacci =="
python ../languages/python/fibonacci.py 16

rm -rf *.pyo
rm -rf *.pyc
