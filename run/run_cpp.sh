#!/bin/bash
echo "Compile C++"
g++ ../languages/cpp/hi.cpp -o hi
echo "Execute C++"
./hi
rm -rf hi
