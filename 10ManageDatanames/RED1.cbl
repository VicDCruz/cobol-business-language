      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. RED1.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 A PIC X(12) .
       01 B REDEFINES A PIC 9(3) .
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           MOVE "123 ABC " TO A .
           DISPLAY "A: " A .
           DISPLAY "B: " B .
           ADD 4 TO B .
           DISPLAY "B + 4 = " B .
           STOP RUN.
       END PROGRAM RED1.
