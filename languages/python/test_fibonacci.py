import unittest
from fibonacci import fib

class FibonacciTests(unittest.TestCase):

    def test_fib_0(self):
        self.assertEqual(0, fib(0))

    def test_fib_1(self):
        self.assertEqual(1, fib(1))

    def test_fib_2(self):
        self.assertEqual(1, fib(2))

    def test_fib_3(self):
        self.assertEqual(2, fib(3))

    def test_fib_4(self):
        self.assertEqual(3, fib(4))

    def test_fib_5(self):
        self.assertEqual(5, fib(5))

    def test_fib_6(self):
        self.assertEqual(8, fib(6))

    def test_fib_7(self):
        self.assertEqual(13, fib(7))

    def test_fib_16(self):
        self.assertEqual(610, fib(15))

    # def test_fib_recursion_limitation(self):
    #     with self.assertRaises(RuntimeError) as context:
    #         fib(1000)
    #     self.assertEqual("maximum recursion depth exceeded", context.exception.message)

if __name__ == '__main__':
    unittest.main()
