#!/bin/bash
. ./colors.sh
section "XSLT Hi"
xsltproc ../languages/xslt/hi.xslt ../languages/xslt/data/hi.xml

section "XSLT Fibonacci"
xsltproc ../languages/xslt/fibonacci.xslt ../languages/xslt/data/fibonacci.xml


