      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. MAIN.
       ENVIRONMENT DIVISION.
           INPUT-OUTPUT SECTION.
               FILE-CONTROL.
               SELECT POLYFILE ASSIGN TO "../input.txt"
                   ORGANIZATION IS LINE SEQUENTIAL.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  COUNTER PIC 99 VALUE 10.
       01  WS-TABLE.
           05 WS-COLS OCCURS 3 TIMES.
               10 WS-ROWS OCCURS 10 TIMES.
                   15 WS-CELL PIC S9(5).
       01  TOTAL-POLYNOMIALS PIC 9 VALUE 3.
       01  Y PIC 9 VALUE 1.
       01  WS-EOF PIC A(1).
       01  WS-CNT PIC 99.
       01  OPERATION PIC A(3).
      *    ADD, SUB, MUL, DER
       01  OPERATOR1 PIC 9.
       01  OPERATOR2 PIC 9.
       01  WS-LINE PIC X(50) JUSTIFIED RIGHT.
       01  WS-X-VALUE PIC 9(3).
       01  ACCUMULATOR PIC S9(10).
       01  WS-AUX.
           05 WS-SIGN PIC X.
           05 WS-ABS PIC 9999.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           PERFORM READ-FILE.
      *     DISPLAY WS-TABLE.
           PERFORM PRINT-ALL.
      *     MOVE 1 TO Y.
      *     PERFORM PRINT-ONE.
           MOVE 3 TO WS-X-VALUE.
           MOVE 1 TO OPERATOR1.
           PERFORM EVALUATE-POL.
           MOVE "DER" TO OPERATION.
           MOVE 1 TO OPERATOR1.
           MOVE 2 TO OPERATOR2.
           CALL "ARITHMETIC-POL"
               USING OPERATION,
               WS-COLS(OPERATOR1), WS-COLS(OPERATOR2), COUNTER.
           PERFORM PRINT-ALL.
           STOP RUN.

       EVALUATE-POL.
           MOVE 1 TO WS-CNT.
           MOVE 0 TO ACCUMULATOR.
           PERFORM COUNTER TIMES
               MOVE WS-ROWS(OPERATOR1, WS-CNT) TO WS-AUX
               IF WS-AUX NOT = "00000" THEN
                   MULTIPLY WS-X-VALUE BY ACCUMULATOR
                   IF WS-SIGN = "-" THEN
                       SUBTRACT WS-ABS FROM ACCUMULATOR
                   ELSE
                       ADD WS-ABS TO ACCUMULATOR
                   END-IF
               END-IF
               ADD 1 TO WS-CNT
           END-PERFORM.
           DISPLAY "=== EVAL ===".
           DISPLAY ACCUMULATOR.
           DISPLAY "=== EVAL ===".

       PRINT-ONE.
           DISPLAY "POLYNOMIAL " Y ": " WITH NO ADVANCING.
           CALL "PRINT-POLYNOMIAL" USING WS-TABLE, Y, COUNTER.
           DISPLAY " ".
           ADD 1 TO Y.

       PRINT-ALL.
           DISPLAY "=== PRINT-ALL ===".
           MOVE 1 TO Y.
           PERFORM PRINT-ONE TOTAL-POLYNOMIALS TIMES.
           DISPLAY "=== PRINT-ALL ===".

       READ-FILE.
           DISPLAY "=== READING FILE ===".
           MOVE 1 TO WS-CNT.
           OPEN INPUT POLYFILE.
               PERFORM UNTIL WS-EOF='Y'
                   READ POLYFILE INTO WS-COLS(WS-CNT)
                       AT END MOVE 'Y' TO WS-EOF
                       NOT AT END
                           UNSTRING
                               WS-COLS(WS-CNT)
                               DELIMITED BY SPACE INTO WS-LINE
                           INSPECT
                               WS-LINE REPLACING LEADING SPACE BY '0'
                           MOVE WS-LINE TO WS-COLS(WS-CNT)
                           ADD 1 TO WS-CNT
                   END-READ
               END-PERFORM.
           CLOSE POLYFILE.
           DISPLAY "=== READING FILE ===".

       END PROGRAM MAIN.
