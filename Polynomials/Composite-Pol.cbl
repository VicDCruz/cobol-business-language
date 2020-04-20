      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. COMPOSITE-POL.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  BACKUP-1.
           05 WS-ROWS-BACKUP-1 OCCURS 10 TIMES.
               10 WS-CELL-BACKUP-1 PIC S9(5).
       01  BACKUP-2.
           05 WS-ROWS-BACKUP-2 OCCURS 10 TIMES.
               10 WS-CELL-BACKUP-2 PIC S9(5).
       01  WS-CNT-1 PIC 99.
       01  OPERATION PIC A(3).
       01  WS-ZEROS PIC X(50) VALUE ZEROES.
       LINKAGE SECTION.
       01  OP1.
           05 WS-ROWS-1 OCCURS 10 TIMES.
               10 WS-CELL PIC S9(5).
       01  OP2.
           05 WS-ROWS-2 OCCURS 10 TIMES.
               10 WS-CELL PIC S9(5).
       01  WS-TOP PIC 99.
       PROCEDURE DIVISION USING OP1, OP2, WS-TOP.
       MAIN-PROCEDURE.
           MOVE 1 TO WS-CNT-1
           MOVE OP1 TO BACKUP-1
           MOVE WS-ZEROS TO OP1.
           MOVE WS-ZEROS TO BACKUP-2.
           PERFORM COMPOSITE WS-TOP TIMES.
           MOVE BACKUP-2 TO OP1.
           GOBACK.

       COMPOSITE.
           MOVE "MUL" TO OPERATION.
           CALL "ARITHMETIC-POL"
               USING OPERATION, BACKUP-2, OP2, WS-TOP.
           MOVE "ADD" TO OPERATION.
           MOVE WS-ROWS-BACKUP-1(WS-CNT-1) TO
               WS-ROWS-1(WS-TOP).
           CALL "ARITHMETIC-POL"
               USING OPERATION, BACKUP-2, OP1, WS-TOP.
           ADD 1 TO WS-CNT-1.
       END PROGRAM COMPOSITE-POL.
