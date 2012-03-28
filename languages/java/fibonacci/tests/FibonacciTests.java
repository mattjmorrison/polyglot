package fibonacci.tests;

import org.junit.*;
import static org.junit.Assert.assertEquals;
import fibonacci.*;

public class FibonacciTests {
    private Fibonacci fib;
    
    @Before
    public void setUp(){
        this.fib = new Fibonacci();
    }
    
    @Test
    public void should_return_0_for_0(){
        assertEquals(0, this.fib.fib(0));
    }

    @Test
    public void should_return_0_for_1(){
        assertEquals(0, this.fib.fib(0));
    }

    @Test
    public void should_return_1_for_2(){
        assertEquals(1, this.fib.fib(2));
    }
    
    @Test
    public void should_return_2_for_3(){
        assertEquals(2, this.fib.fib(3));
    }

    @Test
    public void should_return_3_for_4(){
        assertEquals(3, this.fib.fib(4));
    }

    @Test
    public void should_return_5_for_5(){
        assertEquals(5, this.fib.fib(5));
    }
    
    @Test
    public void should_return_610_for_15(){
        assertEquals(610, this.fib.fib(15));
    }


}