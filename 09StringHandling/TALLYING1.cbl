      ******************************************************************
      * Author: Viridiana Marlen González F.
      * Date: April 12, 2020
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. TALLYING1.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-DATA PIC X(10) VALUE 'MAINFRAMES'.
       01 WS-CNT PIC 9(02).
       PROCEDURE DIVISION.
       DISPLAY 'INSPECT TALLYING...'.
       INSPECT WS-DATA TALLYING WS-CNT FOR ALL 'A'.
       DISPLAY 'COUNT OF A LETTER IS: 'WS-CNT.
       STOP RUN.
       END PROGRAM TALLYING1.
