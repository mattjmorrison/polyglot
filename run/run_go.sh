#!/bin/bash
cd ../languages/go/

echo "== Go Hi =="
echo "Compile Go"
6g hi.go
echo "Link Go"
6l hi.6
echo "Execute Go"
./6.out
rm -rf hi.6
rm -rf 6.out

echo "== Go Fibonacci =="
echo "Compile Go"
6g fibonacci.go
echo "Link Go"
6l fibonacci.6
echo "Execute Go"
./6.out 16
rm -rf fibonacci.6
rm -rf 6.out
