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
       01 WS-STRING PIC A(30).
       01 WS-STR1 PIC A(15) VALUE ' COBOL'.
       01 WS-STR2 PIC A(8) VALUE 'Welcome '.
       01 WS-STR3 PIC A(7) VALUE 'To AND'.
       01 WS-COUNT PIC 99 VALUE 1.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           STRING WS-STR2 DELIMITED BY SIZE
               WS-STR3 DELIMITED BY SPACE
               WS-STR1 DELIMITED BY SIZE
               INTO WS-STRING
               WITH POINTER WS-COUNT
               ON OVERFLOW DISPLAY 'OVERFLOW!'
           END-STRING.

               DISPLAY 'WS-STRING : 'WS-STRING.
           DISPLAY 'WS-COUNT : 'WS-COUNT.
           STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
