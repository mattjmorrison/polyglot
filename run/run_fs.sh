#!/bin/bash
. ./colors.sh

section "F# Hi"
step "Compile F#"
fsc ../languages/fs/hi.fs > /dev/null
step "Execute F#"
mono hi.exe
rm -rf hi.exe

cd ../languages/fs/fibonacci
section "F# Fibonacci Tests"
step "Compile F#"
X=/Library/Frameworks/Mono.framework/Versions/2.10.8/lib/mono/4.0/nunit.framework.dll
fsc -r:$X fibonacci.fs tests.fs -o:tests.dll --target:library > /dev/null
step "Execute F#"
nunit-console tests.dll
rm -rf *.dll
rm -rf *.xml

section "F# Fibonacci"
step "Compile F#"
fsc fibonacci.fs cli.fs > /dev/null
step "Execute F#"
mono cli.exe 16
rm -rf cli.exe