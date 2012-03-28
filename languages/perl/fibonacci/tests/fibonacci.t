#!/usr/bin/perl -w

use Test::More;
use fibonacci;

ok(0 == fib(0));
ok(1 == fib(1));
ok(1 == fib(2));
ok(2 == fib(3));
ok(3 == fib(4));
ok(5 == fib(5));
ok(8 == fib(6));
ok(610 == fib(15));

done_testing();