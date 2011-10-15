#!/bin/bash
echo "== F# Hi =="
echo "Compile F#"
fsc ../languages/fs/hi.fs > /dev/null
echo "Execute F#"
mono hi.exe
rm -rf hi.exe