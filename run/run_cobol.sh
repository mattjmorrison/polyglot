#!/bin/bash
. ./colors.sh
cd ../languages/cobol/

section "COBOL Hi"
step "Compile COBOL"
cobc -v -x hi.cob
step "Execute COBOL"
./hi
rm -rf hi