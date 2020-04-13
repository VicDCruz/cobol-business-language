      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. TABL4.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-TABLE .
           02 WS-ARTICLE OCCURS 2.
               03 NAME-ARTICLE PIC X(5).
               03 WS-CODE OCCURS 3.
                   04 CODE-VAL PIC X(5).
                   04 WS-PRICE OCCURS 2 PIC X(5).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           MOVE "HOLA!" TO NAME-ARTICLE(1).
           MOVE "12345" TO CODE-VAL(1, 1).
           MOVE "10" TO WS-PRICE(1, 1, 1).
           DISPLAY "NAME: " NAME-ARTICLE(1).
           DISPLAY "CODE: " CODE-VAL(1, 1).
           DISPLAY "PRICE: " WS-PRICE(1, 1, 1).
           STOP RUN.
       END PROGRAM TABL4.
