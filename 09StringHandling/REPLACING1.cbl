      ******************************************************************
      * Author: Viridiana Marlen González F.
      * Date: April 12,2020
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. REPLACING1.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-STRING PIC X(15) VALUE 'AGHJAHJARTAACFA'.

       PROCEDURE DIVISION.
       DISPLAY "OLD STRING BEFORE REPLACING : "WS-STRING.
       INSPECT WS-STRING REPLACING ALL 'A' BY 'T'.
       DISPLAY "NEW STRING AFTER REPLACING : "WS-STRING.
       STOP RUN.
       END PROGRAM REPLACING1.
