      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PRINT-POLYNOMIAL.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  WS-CNT PIC 99.
       01  WS-EXP PIC 99.
       01  WS-ZEROS PIC X(50) VALUE ZEROES.
       LINKAGE SECTION.
       01  COUNTER PIC 99.
       01  WS-TABLE.
           05 WS-COLS OCCURS 3 TIMES.
               10 WS-ROWS OCCURS 10 TIMES.
                   15 WS-CELL PIC S9(5).
       01  WS-COL PIC 9.
       PROCEDURE DIVISION USING WS-TABLE, WS-COL, COUNTER.
       MAIN-PROCEDURE.
           IF WS-COLS(WS-COL) = WS-ZEROS THEN
               DISPLAY "0" WITH NO ADVANCING
           ELSE
               COMPUTE WS-EXP = COUNTER - 1
               MOVE 1 TO WS-CNT
               PERFORM PRINT-POLYNOMIAL COUNTER TIMES
           END-IF.
           GOBACK.

       PRINT-POLYNOMIAL.
           IF WS-ROWS(WS-COL, WS-CNT) NOT = 00000 THEN
               IF WS-ROWS(WS-COL, WS-CNT) = 1 THEN
                   DISPLAY "+" WITH NO ADVANCING
               ELSE
                   IF WS-ROWS(WS-COL, WS-CNT) = -1 THEN
                       DISPLAY "-" WITH NO ADVANCING
                   ELSE
                       IF WS-ROWS(WS-COL, WS-CNT) > 0 THEN
                           DISPLAY "+" WS-ROWS(WS-COL, WS-CNT)
                           WITH NO ADVANCING
                       ELSE
                           DISPLAY WS-ROWS(WS-COL, WS-CNT)
                           WITH NO ADVANCING
                       END-IF
                   END-IF
               END-IF
               IF WS-EXP > 0 THEN
                   IF WS-EXP > 1 THEN
                       DISPLAY "x^" WS-EXP WITH NO ADVANCING
                   ELSE
                       DISPLAY "x" WITH NO ADVANCING
               END-IF
           END-IF.
           SUBTRACT 1 FROM WS-EXP
           ADD 1 TO WS-CNT.
       END PROGRAM PRINT-POLYNOMIAL.
