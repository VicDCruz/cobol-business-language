      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. MOV4.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 A PIC X(12) VALUE "HELLO WORLD".
       01 B PIC X(5) .
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           MOVE A (7:5) TO B.
           DISPLAY "B: " B .
           STOP RUN.
       END PROGRAM MOV4.
