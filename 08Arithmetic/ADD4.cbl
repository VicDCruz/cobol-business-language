      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ADD4.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  A PIC 9V9 VALUE 5.1.
       01  B PIC 9V9 VALUE 2.3.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "OLD VALUE OF B: " B .
           ADD A TO B .
           DISPLAY "NEW VALUE OF B: " B .
           STOP RUN.
       END PROGRAM ADD4.
