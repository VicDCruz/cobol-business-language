      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. DIV1.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  A PIC S9 VALUE 0.
       01  B PIC S9 VALUE 9.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DIVIDE A INTO B .
           DISPLAY " VALUE OF B: " B .
           STOP RUN.
       END PROGRAM DIV1.
