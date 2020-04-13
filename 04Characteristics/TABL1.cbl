      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. TABL1.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-TABLE .
           02 ELEM OCCURS 2 PIC X(7).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           MOVE "ABCDEFGHIJLMNP" TO WS-TABLE.
           DISPLAY "FIRST ELEMENT: " ELEM(1).
           DISPLAY "SECOND ELEMENT: " ELEM(2).
           STOP RUN.
       END PROGRAM TABL1.
