
def fib(n)
    return n if (0..1).include? n
    fib(n-1) + fib(n-2)
end
