      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. MUL1.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  A PIC S9 VALUE 5.
       01  B PIC S99 VALUE -40.
       01  C PIC S999 .
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           MULTIPLY A BY B GIVING C
           NOT ON SIZE ERROR DISPLAY "LENGTH CORRECT".
           DISPLAY "C = A * B = " C
           STOP RUN.
       END PROGRAM MUL1.
