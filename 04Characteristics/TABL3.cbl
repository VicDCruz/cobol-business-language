      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. TABL3.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-TABLE .
           02 WS-ROW OCCURS 4.
               03 WS-COLUMN OCCURS 5.
                   04 WS-DATA PIC X(5).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           MOVE "ABC123DEF4567890GHIJKLMNOPQRSTUVWXYZ" TO WS-TABLE.
           DISPLAY "TABLE: " WS-TABLE.
           DISPLAY "1ST ROW: " WS-ROW(1).
           DISPLAY "1ST COL: " WS-COLUMN(1,1).
           STOP RUN.
       END PROGRAM TABL3.
