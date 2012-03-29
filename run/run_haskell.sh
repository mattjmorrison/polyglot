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

cd ../languages/haskell/fibonacci/
section "Haskell Fibonacci Tests"
step "Compile Haskell"
ghc tests.hs fibonacci.hs hunit/*.lhs -o tests
step "Execute Haskell"
./tests
rm -rf tests


section "Haskell Fibonacci"
step "Compile Haskell"
ghc cli.hs fibonacci.hs -o fibonacci -v0
step "Execute Haskell"
./fibonacci 16
rm -rf *.o
rm -rf *.hi
rm -rf fibonacci

