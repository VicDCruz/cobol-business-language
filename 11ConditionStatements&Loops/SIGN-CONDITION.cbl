      ******************************************************************
      * Author: Viridiana Marlen Gonz�lez F.
      * Date: April 12, 2020
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. SIGN-CONDITION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-NUM1 PIC S9(9) VALUE  1234.
       01 WS-NUM2 PIC S9(9) VALUE -123456.

       PROCEDURE DIVISION.
       A000-FIRST-PARA.
       IF WS-NUM1 IS POSITIVE THEN
       DISPLAY 'WS-NUM1 IS POSITIVE'.

       IF WS-NUM1 IS NEGATIVE THEN
       DISPLAY 'WS-NUM1 IS NEGATIVE'.

       IF WS-NUM2 IS NEGATIVE THEN
       DISPLAY 'WS-NUM2 IS NEGATIVE'

       IF WS-NUM1 IS ZERO THEN
       DISPLAY 'WS-NUM1 IS ZERO'.

       IF WS-NUM2 IS POSITIVE THEN
       DISPLAY 'WS-NUM2 IS POSITIVE'.

       STOP RUN.
       END PROGRAM SIGN-CONDITION.
