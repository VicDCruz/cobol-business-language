      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. COMP1.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  A PIC S99 .
       01  B PIC S99 VALUE 15.
       01  C PIC S99 VALUE 10.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           COMPUTE A = B - C .
           DISPLAY "A = B - C = " A .
           STOP RUN.
       END PROGRAM COMP1.
