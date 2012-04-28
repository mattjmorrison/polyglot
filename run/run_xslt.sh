#!/bin/bash
. ./colors.sh
section "XSLT Hi"
xsltproc ../languages/xslt/hi.xslt ../languages/xslt/data/hi.xml

section "XSLT Fibonacci Tests"
xsltproc ../languages/xslt/fibonacci/tests.xslt ../languages/xslt/data/fibonacci.xml

section "XSLT Fibonacci"
xsltproc ../languages/xslt/fibonacci/cli.xslt ../languages/xslt/data/fibonacci.xml


