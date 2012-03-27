require 'test/unit'
require 'fibonacci'

class TestFibonacci < Test::Unit::TestCase

  def test_0_is_0
    assert_equal 0, fib(0)
  end

  def test_1_is_1
    assert_equal 1, fib(1)
  end

  def test_2_is_1
    assert_equal 1, fib(2)
  end
  
  def test_3_is_2
    assert_equal 2, fib(3)
  end
  
  def test_4_is_3
    assert_equal 3, fib(4)
  end
  
  def test_15_is_610
    assert_equal 610, fib(15)
  end
end