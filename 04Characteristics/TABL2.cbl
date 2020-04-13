      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. TABL2.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-TABLE .
           02 ELEM OCCURS 2.
               03 COD PIC X(3).
               03 CAN PIC X(3).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           MOVE "ABC123DEF456" TO WS-TABLE.
           DISPLAY "FIRST ELEMENT: " ELEM(1).
           DISPLAY "COD 1. " COD(1).
           DISPLAY "CAN 1. " CAN(1).
           DISPLAY "SECOND ELEMENT: " ELEM(2).
           DISPLAY "COD 2. " COD(2).
           DISPLAY "CAN 2. " CAN(2).
           STOP RUN.
       END PROGRAM TABL2.
