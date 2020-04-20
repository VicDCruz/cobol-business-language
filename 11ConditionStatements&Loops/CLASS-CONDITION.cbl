      ******************************************************************
      * Author: Viridiana Marlen Gonz�lez F.
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CLASS-CONDITION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-NUM1 PIC X(9) VALUE 'ABCD'.
       01 WS-NUM2 PIC 9(9) VALUE 123456789.

       PROCEDURE DIVISION.
       A000-FIRST-PARA.

       IF WS-NUM1 IS ALPHABETIC THEN
       DISPLAY 'WS-NUM1 IS ALPHABETIC'.

       IF WS-NUM1 IS NUMERIC THEN
       DISPLAY 'WS-NUM1 IS NUMERIC'.

       IF WS-NUM2 IS NUMERIC THEN
       DISPLAY 'WS-NUM2 IS NUMERIC'.

       STOP RUN.
       END PROGRAM CLASS-CONDITION.
