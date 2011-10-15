#!/bin/bash
echo "== C# Hi =="
echo "Compile C#"
gmcs ../languages/cs/hi.cs
echo "Execute C#"
mono ../languages/cs/hi.exe
rm -rf ../languages/cs/hi.exe

echo "== C# Fibonacci 20 =="
echo "Compile C#"
gmcs ../languages/cs/fibonacci.cs
echo "Execute C#"
mono ../languages/cs/fibonacci.exe 20
rm -rf ../languages/cs/fibonacci.exe