#!/bin/bash
. ./colors.sh

section "PHP Hi"
php ../languages/php/hi.php

section "PHP Fibonacci Tests"
cd ../languages/php/fibonacci
php tests.php

section "PHP Fibonacci"
php cli.php 16
