      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PERFORM-TIMES.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  WS-COUNT PIC 9 VALUE 1.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "=== LOOP 1 ==="
           PERFORM 5 TIMES
               DISPLAY "WS-COUNT: " WS-COUNT
               ADD 1 TO WS-COUNT
           END-PERFORM.
           DISPLAY "=== LOOP 1 ==="

           MOVE 1 TO WS-COUNT.

           DISPLAY "=== LOOP 2 ==="
           PERFORM INC-COUNT 5 TIMES.
           DISPLAY "=== LOOP 2 ==="
           STOP RUN.
       INC-COUNT.
           DISPLAY "WS-COUNT: " WS-COUNT.
           ADD 1 TO WS-COUNT.
       END PROGRAM PERFORM-TIMES.
