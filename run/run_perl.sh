#!/bin/bash
. ./colors.sh
section "Perl Hi"
perl ../languages/perl/hi.pl

cd ../languages/perl/fibonacci
section "Perl Fibonacci Tests"
perl tests/fibonacci.t

section "Perl Fibonacci"
perl cli.pl 16
