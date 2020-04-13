      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. SUB3.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  A PIC S99 VALUE 50.
       01  B PIC S99 VALUE 40.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "OLD VALUE OF B: " B.
           SUBTRACT A FROM B.
           DISPLAY "NEW VALUE OF B: " B.
           STOP RUN.
       END PROGRAM SUB3.
