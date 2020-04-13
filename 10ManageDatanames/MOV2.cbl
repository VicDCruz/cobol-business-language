      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. MOV2.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 GROUP1 .
           05 A PIC X(20) VALUE "HELLO WORLD ".
           05 B PIC 9(3) VALUE 123.
           05 C PIC X(20) VALUE "GOOD TO BE HERE ".
       01 GROUP2 .
           05 D PIC X(15) .
           05 E PIC 9(2) .
           05 F PIC X(10) .
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           MOVE GROUP1 TO GROUP2.
           DISPLAY "D: " D .
           DISPLAY "E: " E .
           DISPLAY "F: " F .
           STOP RUN.
       END PROGRAM MOV2.
