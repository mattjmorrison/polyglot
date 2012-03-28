#!/bin/bash
. ./colors.sh

cd ../languages/dart

section "Dart Hi"
dart hi.dart

cd fibonacci/

section "Dart Fibonacci Tests"
dart tests.dart

section "Dart Fibonacci"
dart cli.dart 16
