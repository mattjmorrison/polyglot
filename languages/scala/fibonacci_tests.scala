import org.scalatest.FunSuite
import scala.collection.mutable.Stack

class FibonacciSuite extends FunSuite {
	
	test("test fib 0"){
		assert(1 === 1)
	}

/*
	test("pop is invoked on a non-empty stack") {
		val stack = new Stack[Int]
		stack.push(1)
		stack.push(2)
		val oldSize = stack.size
		val result = stack.pop()
		assert(result === 2)
		assert(stack.size === oldSize - 1)
	}
 
	test("pop is invoked on an empty stack") {
		val emptyStack = new Stack[Int]
		intercept[NoSuchElementException] {
		  emptyStack.pop()
		}
		assert(emptyStack.isEmpty)
	}
*/
}