#!/bin/bash
ghc ../sample.hs -o sample
./sample
rm -rf ../sample.o
rm -rf ../sample
rm -rf ../sample.hi
rm -rf sample

