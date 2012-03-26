#!/bin/bash
. ./colors.sh

section "C# Hi"
step "Compile C#"
gmcs ../languages/cs/hi.cs
step "Execute C#"
mono ../languages/cs/hi.exe
rm -rf ../languages/cs/hi.exe

section "C# Fibonacci"
step "Compile C#"
gmcs ../languages/cs/fibonacci.cs
step "Execute C#"
mono ../languages/cs/fibonacci.exe 16
rm -rf ../languages/cs/fibonacci.exe
