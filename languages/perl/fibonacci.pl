sub fib{
    my $n = shift;
    return $n if $n < 2;
    fib($n-1) + fib($n-2);
}

print fib($ARGV[0]) . "\n";
