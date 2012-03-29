import org.scalatest.FunSuite
import fibonacci._
 
class FibonacciTests extends FunSuite {
 
	test("test 0") {
		assert(0 === fibonacci.fib(0))
	}

	test("test 1") {
		assert(1 === fibonacci.fib(1))
	}

	test("test 2") {
		assert(1 === fibonacci.fib(2))
	}

	test("test 3") {
		assert(2 === fibonacci.fib(3))
	}

	test("test 4") {
		assert(3 === fibonacci.fib(4))
	}

	test("test 5") {
		assert(5 === fibonacci.fib(5))
	}

	test("test 6") {
		assert(8 === fibonacci.fib(6))
	}

	test("test 15") {
		assert(610 === fibonacci.fib(15))
	}

}