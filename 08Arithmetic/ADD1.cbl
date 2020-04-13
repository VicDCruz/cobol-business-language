      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ADD1.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  A PIC 9 VALUE 5.
       01  B PIC 9 VALUE 2.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "OLD VALUE OF B: " B .
           ADD A TO B .
           DISPLAY "NEW VALUE OF B: " B .
           STOP RUN.
       END PROGRAM ADD1.
