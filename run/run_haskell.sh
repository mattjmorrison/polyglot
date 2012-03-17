#!/bin/bash
echo "== Haskell Hi =="
echo "Compile Haskell"
ghc ../languages/haskell/hi.hs -o hi -v0
echo "Execute Haskell"
./hi
rm -rf ../languages/haskell/hi.o
rm -rf ../languages/haskell/hi
rm -rf ../languages/haskell/hi.hi
rm -rf hi

echo "== Haskell Fibonacci =="
echo "Compile Haskell"
ghc ../languages/haskell/fibonacci.hs -o fibonacci -v0
echo "Execute Haskell"
./fibonacci 16
rm -rf ../languages/haskell/fibonacci.o
rm -rf ../languages/haskell/fibonacci
rm -rf ../languages/haskell/fibonacci.hi
rm -rf fibonacci

