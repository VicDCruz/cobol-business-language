      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. COMP2.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  A PIC S99V99 VALUE 13.00.
       01  B PIC S99V99 VALUE 27.03.
       01  C PIC S99V99 VALUE 09.10.
       01  D PIC S99V99 VALUE 10.90.
       01  E PIC S99V9 .
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           COMPUTE E = ( A + B ) / ( D - C )
           NOT ON SIZE ERROR
           DISPLAY "OK.".
           DISPLAY "E ROUNDED = (A * B) / (D - C) = " E .
           STOP RUN.
       END PROGRAM COMP2.
