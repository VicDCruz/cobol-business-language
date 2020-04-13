      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ADD5.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  A PIC 99 VALUE 99.
       01  B PIC 99 VALUE 1.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "OLD VALUE OF B: " B .
           ADD A TO B .
           DISPLAY "NEW VALUE OF B: " B .
           STOP RUN.
       END PROGRAM ADD5.
