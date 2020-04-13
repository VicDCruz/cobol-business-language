      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. SUB1.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  A PIC 9 VALUE 5.
       01  B PIC 99 VALUE 10.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "OLD VALUE OF B: " B .
           SUBTRACT A FROM B .
           DISPLAY "NEW VALUE OF B: " B .
           STOP RUN.
       END PROGRAM SUB1.
