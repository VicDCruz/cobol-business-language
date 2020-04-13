      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 PGM-NAME PICTURE X(10).
       01 A PIC X(12) VALUE "BETTY BOTTER".
       01 B PIC X(12) VALUE "BUTTER".
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           MOVE "SUBPROGRAM" TO PGM-NAME.
           DISPLAY "=== ENTER ===".
           CALL PGM-NAME USING A, B.
           DISPLAY "=== EXIT  ===".
           MOVE "BANANAS" TO B.
           DISPLAY "=== ENTER ===".
           CALL PGM-NAME USING A, B.
           DISPLAY "=== EXIT  ==="
           STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
