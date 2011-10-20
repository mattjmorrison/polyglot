#!/bin/bash
echo "== XSLT Hi =="
xsltproc ../languages/xslt/hi.xslt ../languages/xslt/data/hi.xml

echo "== XSLT Fibonacci =="
xsltproc ../languages/xslt/fibonacci.xslt ../languages/xslt/data/fibonacci.xml


