package fibonacci

import (
	"testing"
)

func AssertIntEqual(t *testing.T, val1 int, val2 int){
	if (val1 != val2){
		t.Error(val1, " != ", val2)
	}
}

func Test_0_is_0(t *testing.T) {
	AssertIntEqual(t, 0, Fib(0))
}

func Test_1_is_1(t *testing.T){
	AssertIntEqual(t, 1, Fib(1))
}

func Test_2_is_1(t *testing.T){
	AssertIntEqual(t, 1, Fib(2))
}

func Test_3_is_2(t *testing.T){
	AssertIntEqual(t, 2, Fib(3))
}

func Test_4_is_3(t *testing.T){
	AssertIntEqual(t, 3, Fib(4))
}

func Test_5_is_5(t *testing.T){
	AssertIntEqual(t, 5, Fib(5))
}

func Test_6_is_8(t *testing.T){
	AssertIntEqual(t, 8, Fib(6))
}

func Test_15_is_610(t *testing.T){
	AssertIntEqual(t, 610, Fib(15))
}

