      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. MOV1.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  A PIC X(20).
       01  B PIC 9(3).
       01  C PIC X(20).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           MOVE "HELLO WORLD " TO A .
           DISPLAY "A: " A .
           MOVE 123 TO B .
           DISPLAY "B: " B .
           MOVE A TO C .
           DISPLAY "C: " C .
           STOP RUN.
       END PROGRAM MOV1.
