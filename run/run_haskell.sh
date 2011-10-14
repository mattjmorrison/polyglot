#!/bin/bash
echo "Compile Haskell"
ghc ../languages/haskell/hi.hs -o hi
echo "Execute Haskell"
./hi
rm -rf ../languages/haskell/hi.o
rm -rf ../languages/haskell/hi
rm -rf ../languages/haskell/hi.hi
rm -rf hi

