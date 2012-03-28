#import("fibonacci.dart");

main() {
    print(fib(Math.parseInt(new Options().arguments[0]) - 1));
}
