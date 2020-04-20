      ******************************************************************
      * Author: Viridiana Marlen González F.
      * Date: April 12, 2020
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. RELATION-CONDITION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-NUM1 PIC 9(9).
       01 WS-NUM2 PIC 9(9).

       PROCEDURE DIVISION.
       A000-FIRST-PARA.
       MOVE 25 TO WS-NUM1.
       MOVE 15 TO WS-NUM2.

       IF WS-NUM1 IS GREATER THAN OR EQUAL TO WS-NUM2 THEN
       DISPLAY 'WS-NUM1 IS GREATER THAN WS-NUM2'
       ELSE
       DISPLAY 'WS-NUM1 IS LESS THAN WS-NUM2'
       END-IF.

       STOP RUN.
       END PROGRAM RELATION-CONDITION.
