#!/bin/bash
echo "== Python Hi =="
python ../languages/python/hi.py
echo "== Python fibonacci =="
python ../languages/python/fibonacci.py 20
rm -rf *.pyo
rm -rf *.pyc

