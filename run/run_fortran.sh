#!/bin/bash
. ./colors.sh
cd ../languages/fortran/

section "Fortran Hi"
step "Compile Fortran"
gfortran hi.f
step "Execute Fortran"
./a.out
rm -rf a.out
