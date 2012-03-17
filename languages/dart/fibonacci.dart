int fib (int n) {
   if (n < 2) return n;
   return fib(n - 1) + fib(n - 2);
}

main() {
    print(fib(Math.parseInt(new Options().arguments[0]) - 1));
}
