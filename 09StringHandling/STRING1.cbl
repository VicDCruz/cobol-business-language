      ******************************************************************
      * Author: Viridiana Marlen González F.
      * Date: April 12, 2020
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. STRING1.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-S1 PIC X(10) VALUE 'HI '.
       01 WS-S2 PIC X(10) VALUE 'HOW '.
       01 WS-S3 PIC X(10) VALUE 'ARE '.
       01 WS-S4 PIC X(10) VALUE 'YOU?'.
       01 WS-CONCAT PIC X(43) VALUE SPACES.
       PROCEDURE DIVISION.
       MAIN-PARAGRAPH.
       STRING WS-S1 DELIMITED BY SPACE
       ' ' DELIMITED BY SIZE
       WS-S2 DELIMITED BY SPACE
       ' ' DELIMITED BY SIZE
       WS-S3 DELIMITED BY SPACE
       ' ' DELIMITED BY SIZE
       WS-S4 DELIMITED BY SPACE
       INTO WS-CONCAT
       END-STRING
       DISPLAY '>' WS-CONCAT '<'
       GOBACK.
       STOP RUN.
       END PROGRAM STRING1.
