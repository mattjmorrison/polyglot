#!/bin/bash
echo "== F# Hi =="
echo "Compile F#"
fsc ../languages/fs/hi.fs > /dev/null
echo "Execute F#"
mono hi.exe
rm -rf hi.exe

echo "== F# Fibonacci 20 =="
echo "Compile F#"
fsc ../languages/fs/fibonacci.fs > /dev/null
echo "Execute F#"
mono fibonacci.exe 20
rm -rf fibonacci.exe