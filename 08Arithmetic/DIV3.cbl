      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. DIV3.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  A PIC S9 VALUE 8.
       01  B PIC S9 VALUE -3.
       01  C PIC S9 .
       01  D PIC S9 .
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DIVIDE A BY B GIVING C REMAINDER D .
           DISPLAY "C = A / B = " C .
           DISPLAY "REMAINDER : " D .
           STOP RUN.
       END PROGRAM DIV3.
