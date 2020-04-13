      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ADD8.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  A PIC 99V99 VALUE 90.00.
       01  B PIC 99V99 VALUE 10.06.
       01  C PIC 999V9.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           ADD A TO B GIVING C ROUNDED .
           DISPLAY "C = A + B = " C.
           STOP RUN.
       END PROGRAM ADD8.
