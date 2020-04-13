      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. DIV2.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  A PIC S9 VALUE 8.
       01  B PIC S9 VALUE -2.
       01  C PIC S9.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DIVIDE A BY B GIVING C .
           DISPLAY "C = A / B = " C .
           STOP RUN.
       END PROGRAM DIV2.
