#!/bin/bash
. ./colors.sh

cd ../languages/go/

section "Go Hi"
step "Compile Go"
6g hi.go
step "Link Go"
6l hi.6
step "Execute Go"
./6.out
rm -rf hi.6
rm -rf 6.out

section "Go Fibonacci"
step "Compile Go"
6g fibonacci.go
step "Link Go"
6l fibonacci.6
step "Execute Go"
./6.out 16
rm -rf fibonacci.6
rm -rf 6.out
