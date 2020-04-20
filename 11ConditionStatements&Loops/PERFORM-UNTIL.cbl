      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PERFM-UNTIL.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  WS-COUNT PIC 9(2) VALUE 10.
       01  A PIC 9(2).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "=== LOOP 1 ===".
           PERFORM UNTIL WS-COUNT >= 10
               DISPLAY "WS-COUNT: " WS-COUNT
               ADD 1 TO WS-COUNT
           END-PERFORM.
           DISPLAY "=== LOOP 1 ===".

           MOVE 10 TO WS-COUNT.

           DISPLAY "=== LOOP 2 ===".
           PERFORM INC-COUNT WITH TEST BEFORE UNTIL WS-COUNT >= 10.
           DISPLAY "=== LOOP 2 ===".

           MOVE 10 TO WS-COUNT.

           DISPLAY "=== LOOP 3 ===".
           PERFORM INC-COUNT WITH TEST AFTER UNTIL WS-COUNT >= 10.
           DISPLAY "=== LOOP 3 ===".

           DISPLAY "WS-COUNT: " WS-COUNT .

           STOP RUN.

           INC-COUNT.
               DISPLAY "WS-COUNT: " WS-COUNT.
               ADD 1 TO WS-COUNT.
       END PROGRAM PERFM-UNTIL.
