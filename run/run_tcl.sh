#!/bin/bash
. ./colors.sh
cd ../languages/tcl/

section "TCL Hi"
tclsh hi.tcl

cd fibonacci

section "TCL Fibonacci Tests"
tclsh fibonacci.test

section "TCL Fibonacci"
tclsh cli.tcl 16

