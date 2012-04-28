open OUnit;;
open Fibonacci;;

let test_zero _ =
    assert_equal 0 (fibonacci 0)

let test_one _ =
    assert_equal 1 (fibonacci 1)

let test_two _ =
    assert_equal 1 (fibonacci 2)

let test_three _ =
    assert_equal 2 (fibonacci 3)
    
let test_four _ =
    assert_equal 3 (fibonacci 4)
    
let test_five _ =
    assert_equal 5 (fibonacci 5)

let test_six _ = 
    assert_equal 8 (fibonacci 6)

let test_fifteen _ =
    assert_equal 610 (fibonacci 15)

let suite = "Fibonacci Tests" >::: ["0" >:: test_zero;
                                  "1" >:: test_one;
                                  "2" >:: test_two;
                                  "3" >:: test_three;
                                  "4" >:: test_four;
                                  "5" >:: test_five;
                                  "6" >:: test_six;
                                  "15" >:: test_fifteen
                                  ]

let _ =
    run_test_tt_main suite

