#!/bin/bash
. ./colors.sh

section "C# Hi"
step "Compile C#"
gmcs ../languages/cs/hi.cs
step "Execute C#"
mono ../languages/cs/hi.exe
rm -rf ../languages/cs/hi.exe

section "C# Fibonacci Tests"
step "Compile C#"
cd ../languages/cs/fibonacci
X=/Library/Frameworks/Mono.framework/Versions/2.10.8/lib/mono/4.0/nunit.framework.dll
gmcs -r:$X -out:FibonacciTests.dll Fibonacci.cs tests/FibonacciTests.cs -target:library
step "Execute Nunit"
nunit-console FibonacciTests.dll
rm -rf *.dll
rm -rf *.xml
cd ../../../run

section "C# Fibonacci"
step "Compile C#"
cd ../languages/cs/fibonacci
gmcs Cli.cs Fibonacci.cs -out:Cli.exe
step "Execute C#"
mono Cli.exe 16
rm -rf *.exe
