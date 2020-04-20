      ******************************************************************
      * Author: Viridiana Marlen González F.
      * Date: April 12, 2020
      * Purpose:
      * Tectonics: cobc
      ******************************************************************

       IDENTIFICATION DIVISION.
       PROGRAM-ID. NEGATED-CONDITION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-NUM1 PIC 9(2) VALUE 20.
       01 WS-NUM2 PIC 9(9) VALUE 25.

       PROCEDURE DIVISION.
       A000-FIRST-PARA.

       IF NOT WS-NUM1 IS LESS THAN WS-NUM2 THEN
       DISPLAY 'IF-BLOCK'
       ELSE
       DISPLAY 'ELSE-BLOCK'
       END-IF.

       STOP RUN.
       END PROGRAM NEGATED-CONDITION.
