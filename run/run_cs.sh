#!/bin/bash
echo "== C# Hi =="
echo "Compile C#"
gmcs ../languages/cs/hi.cs
echo "Execute C#"
mono ../languages/cs/hi.exe
rm -rf ../languages/cs/hi.exe