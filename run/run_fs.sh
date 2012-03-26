#!/bin/bash
. ./colors.sh

section "F# Hi"
step "Compile F#"
fsc ../languages/fs/hi.fs > /dev/null
step "Execute F#"
mono hi.exe
rm -rf hi.exe

section "F# Fibonacci"
step "Compile F#"
fsc ../languages/fs/fibonacci.fs > /dev/null
step "Execute F#"
mono fibonacci.exe 16
rm -rf fibonacci.exe