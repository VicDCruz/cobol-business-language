      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ADD3.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  A PIC 9 VALUE 5.
       01  B PIC 9 VALUE 2.
       01  C PIC 9.
       01  D PIC 9.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           ADD A TO B GIVING C D .
           DISPLAY "C = A + B = " C .
           DISPLAY "D = A + B = " D .
           STOP RUN.
       END PROGRAM ADD3.
