#!/bin/bash
curl --insecure http://cloud.github.com/downloads/mattjmorrison/polyglot_deps/check-0.9.8.tar.gz > check.tar.gz
tar zxvf check.tar.gz
cd check-0.9.8
./configure
make
make install