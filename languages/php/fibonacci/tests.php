<?
ini_set('include_path', "/Users/mattjmorrison/pear/share/pear/");
require_once 'fibonacci.php';
require_once 'PHPUnit.php';

class FibonacciTests extends PHPUnit_TestCase {
	
	function test_0_is_0() {
		$this->assertEquals(0, fib(0));
	}

	function test_1_is_1() {
		$this->assertEquals(1, fib(1));
	}

	function test_2_is_1() {
		$this->assertEquals(1, fib(2));
	}

	function test_3_is_2() {
		$this->assertEquals(2, fib(3));
	}

	function test_4_is_3() {
		$this->assertEquals(3, fib(4));
	}

	function test_5_is_5() {
		$this->assertEquals(5, fib(5));
	}

	function test_6_is_8() {
		$this->assertEquals(8, fib(6));
	}

	function test_15_is_610() {
		$this->assertEquals(610, fib(15));
	}

}

$suite = new PHPUnit_TestSuite("FibonacciTests");
$result = PHPUnit::run($suite);
echo $result->toString();

?>