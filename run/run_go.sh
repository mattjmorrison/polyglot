#!/bin/bash
. ./colors.sh

cd ../languages/go/

section "Go Hi"
step "gomake"
gomake
step "Execute Go"
./main
step "Cleanup Go"
gomake clean
rm -rf main

cd fibonacci
section "Go Fibonacci Tests"
step "gotest"
gotest
step "Cleanup Go"
gomake clean

section "Go Fibonacci"
step "gomake"
gomake
step "Execute Go"
./main 16

step "Cleanup Go"
rm -rf main
gomake clean