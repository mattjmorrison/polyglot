<?

  function fib($n){
    return $n < 2 ? $n : (fib($n-1) + fib($n-2));
  }

  echo fib($argv[1] - 1) . "\n";
?>