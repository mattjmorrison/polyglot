#!/bin/bash
echo "Compile Java"
javac Sample.java
echo "Execute Java"
java Sample
rm -rf *.class
