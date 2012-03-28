#import("lib/bullseye.dart");
#import("fibonacci.dart");

class FibonacciTest extends BullseyeTestCase {

	get description() => "Fibonacci Tests";

	testCase() {

		test("0 is 0", (){
			Expect.equals(0, fib(0));
		});

		test("1 is 1", (){
			Expect.equals(1, fib(1));
		});

		test("2 is 1", (){
			Expect.equals(1, fib(2));
		});

		test("3 is 2", (){
			Expect.equals(2, fib(3));
		});

		test("4 is 3", (){
			Expect.equals(3, fib(4));
		});

		test("5 is 5", (){
			Expect.equals(5, fib(5));
		});

		test("6 is 7", (){
			Expect.equals(8, fib(6));
		});

		test("15 is 610", (){
			Expect.equals(610, fib(15));
		});

	}
}

main() => Bullseye.run([new FibonacciTest()]);
