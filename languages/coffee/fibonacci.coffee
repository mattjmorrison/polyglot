fib = (n) ->
  return n if n < 2
  return (fib n-1) + (fib n-2)

console.log fib (process.argv[2] - 1)