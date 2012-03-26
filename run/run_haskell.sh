#!/bin/bash
. ./colors.sh

section "Haskell Hi"
step "Compile Haskell"
ghc ../languages/haskell/hi.hs -o hi -v0
step "Execute Haskell"
./hi
rm -rf ../languages/haskell/hi.o
rm -rf ../languages/haskell/hi
rm -rf ../languages/haskell/hi.hi
rm -rf hi

section "Haskell Fibonacci"
step "Compile Haskell"
ghc ../languages/haskell/fibonacci.hs -o fibonacci -v0
step "Execute Haskell"
./fibonacci 16
rm -rf ../languages/haskell/fibonacci.o
rm -rf ../languages/haskell/fibonacci
rm -rf ../languages/haskell/fibonacci.hi
rm -rf fibonacci

