#!/bin/bash
echo "Compile Haskell"
ghc ../sample.hs -o sample
echo "Execute Haskell"
./sample
rm -rf ../sample.o
rm -rf ../sample
rm -rf ../sample.hi
rm -rf sample

