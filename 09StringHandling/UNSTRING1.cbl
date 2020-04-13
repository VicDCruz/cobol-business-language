      ******************************************************************
      * Author: Viridiana Marlen González F.
      * Date: April 12, 2020
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. UNSTRING1.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-STRING PIC A(40) VALUE 'WELCOME TO PROGRAMMING LANGUAGES'.
       01 STR1 PIC A(7).
       01 STR2 PIC A(2).
       01 STR3 PIC A(15).
       01 STR4 PIC A(16).
       01 WS-COUNT PIC 99 VALUE 1.

       PROCEDURE DIVISION.
       UNSTRING WS-STRING DELIMITED BY SPACE
       INTO STR1, STR2, STR3, STR4
       END-UNSTRING.
       DISPLAY 'STR1 IS : 'STR1.
       DISPLAY 'STR2 IS : 'STR2.
       DISPLAY 'STR3 IS : 'STR3.
       DISPLAY 'STR3 IS : 'STR4.
       STOP RUN.
       END PROGRAM UNSTRING1.
