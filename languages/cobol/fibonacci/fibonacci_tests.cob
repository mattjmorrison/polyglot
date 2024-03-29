        IDENTIFICATION DIVISION.
        PROGRAM-ID. FIBONACCI-TESTS.
        ENVIRONMENT DIVISION.

        DATA DIVISION.
        WORKING-STORAGE SECTION.
        01 FIBONACCI.
            05 FIBONACCI-INPUT PIC 9(3) VALUE ZERO.
            05 FIBONACCI-OUTPUT PIC 9(5) VALUE ZERO.
        01 EXPECTED-OUTPUT PIC 9(5) VALUE ZERO.
        01 TEST-RESULTS.
            05 PASSED-TESTS PIC 9(3) VALUE ZERO.
            05 FAILED-TESTS PIC 9(3) VALUE ZERO.

        PROCEDURE DIVISION.

        ZERO-TEST.
            MOVE 0 TO FIBONACCI-INPUT.
            MOVE 0 TO EXPECTED-OUTPUT.
            PERFORM CALL-FIBONACCI.

        ONE-TEST.
            MOVE 1 TO FIBONACCI-INPUT.
            MOVE 1 TO EXPECTED-OUTPUT.
            PERFORM CALL-FIBONACCI.

        TWO-TEST.
            MOVE 2 TO FIBONACCI-INPUT.
            MOVE 1 TO EXPECTED-OUTPUT.
            PERFORM CALL-FIBONACCI.            

        THREE-TEST.
            MOVE 3 TO FIBONACCI-INPUT.
            MOVE 2 TO EXPECTED-OUTPUT.
            PERFORM CALL-FIBONACCI.

        FOUR-TEST.
            MOVE 4 TO FIBONACCI-INPUT.
            MOVE 3 TO EXPECTED-OUTPUT.
            PERFORM CALL-FIBONACCI.

        FIVE-TEST.
            MOVE 5 TO FIBONACCI-INPUT.
            MOVE 5 TO EXPECTED-OUTPUT.
            PERFORM CALL-FIBONACCI.

        SIX-TEST.
            MOVE 6 TO FIBONACCI-INPUT.
            MOVE 8 TO EXPECTED-OUTPUT.
            PERFORM CALL-FIBONACCI.

        SEVEN-TEST.
            MOVE 7 TO FIBONACCI-INPUT.
            MOVE 13 TO EXPECTED-OUTPUT.
            PERFORM CALL-FIBONACCI.

        FIFTEEN-TEST.
            MOVE 15 TO FIBONACCI-INPUT.
            MOVE 610 TO EXPECTED-OUTPUT.
            PERFORM CALL-FIBONACCI.

        PERFORM DISPLAY-RESULTS.

        STOP RUN.

        CALL-FIBONACCI.
            MOVE 0 TO FIBONACCI-OUTPUT.
            CALL 'FIBONACCI' USING FIBONACCI.
            PERFORM ASSERT-RESULT.

        ASSERT-RESULT.
            IF FIBONACCI-OUTPUT EQUAL EXPECTED-OUTPUT
                DISPLAY '.' WITH NO ADVANCING
                ADD 1 TO PASSED-TESTS
            ELSE
                DISPLAY 'F' WITH NO ADVANCING
                DISPLAY SPACE
                DISPLAY 'EXPECTED ' EXPECTED-OUTPUT 
                        ' GOT ' FIBONACCI-OUTPUT
                ADD 1 TO FAILED-TESTS
            END-IF.

        DISPLAY-RESULTS.
            DISPLAY SPACE.
            DISPLAY PASSED-TESTS ' PASSED TESTS'.
            IF FAILED-TESTS GREATER ZERO
                DISPLAY FAILED-TESTS ' FAILED TESTS'
            END-IF.
