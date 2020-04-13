      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ARITHMETIC-POL.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  BACKUP-1.
           05 WS-ROWS-BACKUP-1 OCCURS 10 TIMES.
               10 WS-CELL-BACKUP-1 PIC S9(5).
       01  BACKUP-2.
           05 WS-ROWS-BACKUP-2 OCCURS 10 TIMES.
               10 WS-CELL-BACKUP-2 PIC S9(5).
       01  WS-AUX1.
           05 WS-SIGN1 PIC X.
           05 WS-ABS1 PIC 9999.
       01  WS-AUX2.
           05 WS-SIGN2 PIC X.
           05 WS-ABS2 PIC 9999.
       01  WS-CNT-1 PIC 99.
       01  WS-CNT-2 PIC 99.
       01  WS-ZEROS PIC X(50) VALUE ZEROES.
       LINKAGE SECTION.
       01  OPER PIC A(3).
      *    ADD, SUB, MUL, DER
       01  OP1.
           05 WS-ROWS-1 OCCURS 10 TIMES.
               10 WS-CELL PIC S9(5).
       01  OP2.
           05 WS-ROWS-2 OCCURS 10 TIMES.
               10 WS-CELL PIC S9(5).
       01  WS-TOP PIC 99.
       PROCEDURE DIVISION USING OPER, OP1, OP2, WS-TOP.
       MAIN-PROCEDURE.
           IF OPER = "ADD" OR OPER = "SUB" THEN
               MOVE 1 TO WS-CNT-1
               PERFORM ADD-OR-SUB-POL WS-TOP TIMES
           ELSE IF OPER = "MUL" THEN
               MOVE WS-TOP TO WS-CNT-1
               MOVE "ADD" TO OPER
               MOVE OP1 TO BACKUP-1
               MOVE OP2 TO BACKUP-2
               MOVE WS-ZEROS TO OP1
               PERFORM MULTIPLICATE-POL WS-TOP TIMES
               MOVE BACKUP-2 TO OP2
               MOVE "MUL" TO OPER
           ELSE IF OPER = "DER" THEN
               MOVE OP1 TO BACKUP-1
               MOVE WS-ZEROS TO OP1
               MOVE 1 TO WS-CNT-1
               PERFORM DERIVATE-POL WS-TOP TIMES
           END-IF.
           GOBACK.

       DERIVATE-POL.
           PERFORM WITH TEST BEFORE UNTIL WS-CNT-1 = WS-TOP
               IF WS-ROWS-BACKUP-1(WS-CNT-1) NOT = 00000 THEN
                   MOVE WS-ROWS-BACKUP-1(WS-CNT-1) TO WS-AUX1
                   SUBTRACT WS-CNT-1 FROM WS-TOP GIVING WS-CNT-2
                   MULTIPLY WS-CNT-2 BY WS-ABS1
                   ADD 1 TO WS-CNT-1
                   MOVE WS-AUX1 TO WS-ROWS-1(WS-CNT-1)
               ELSE
                   ADD 1 TO WS-CNT-1
               END-IF
           END-PERFORM.

       MULTIPLICATE-POL.
           MOVE WS-TOP TO WS-CNT-2.
           MOVE WS-ZEROS TO OP2.
           PERFORM WS-TOP TIMES
               MOVE WS-ROWS-BACKUP-1(WS-CNT-1) TO WS-AUX1
               MOVE WS-ROWS-BACKUP-2(WS-CNT-2) TO WS-AUX2
               MULTIPLY WS-ABS2 BY WS-ABS1
               COMPUTE WS-CNT-2 = WS-CNT-2 - WS-TOP + WS-CNT-1
               IF WS-CNT-2 > 0 THEN
                   IF WS-ABS1 = 0 THEN
                       MOVE "00000" TO WS-ROWS-2(WS-CNT-2)
                   ELSE
                       IF WS-SIGN1 = "-" AND WS-SIGN2 = "-" THEN
                           MOVE "0" TO WS-SIGN1
                       ELSE
                           IF WS-SIGN1 = "-" OR WS-SIGN2 = "-" THEN
                               MOVE "-" TO WS-SIGN1
                           ELSE
                               MOVE "0" TO WS-SIGN1
                           END-IF
                       END-IF
                       MOVE WS-AUX1 TO WS-ROWS-2(WS-CNT-2)
                   END-IF
               END-IF
               COMPUTE WS-CNT-2 = WS-CNT-2 + WS-TOP - WS-CNT-1 - 1
           END-PERFORM.
           MOVE WS-CNT-1 TO WS-CNT-2.
           MOVE 1 TO WS-CNT-1.
           PERFORM ADD-OR-SUB-POL WS-TOP TIMES.
           MOVE WS-CNT-2 TO WS-CNT-1.
           SUBTRACT 1 FROM WS-CNT-1.

       ADD-OR-SUB-POL.
           MOVE WS-ROWS-1(WS-CNT-1) TO WS-AUX1.
           MOVE WS-ROWS-2(WS-CNT-1) TO WS-AUX2.
           IF WS-SIGN1 = "0" AND WS-SIGN2 = "0" AND OPER = "ADD" THEN
               ADD WS-ABS2 TO WS-ABS1
           ELSE IF
               (WS-SIGN1 = "-" AND WS-SIGN2 = "-" AND OPER = "SUB") OR
               (WS-SIGN1 = "-" AND WS-SIGN2 = "0" AND OPER = "ADD") THEN
               IF WS-ABS2 > WS-ABS1 THEN
                   MOVE "0" TO WS-SIGN1
               END-IF
               SUBTRACT WS-ABS2 FROM WS-ABS1
           ELSE IF
               WS-SIGN1 = "0" AND WS-SIGN2 = "-" AND OPER = "ADD" THEN
               IF WS-ABS2 > WS-ABS1 THEN
                   MOVE "-" TO WS-SIGN1
               END-IF
               SUBTRACT WS-ABS2 FROM WS-ABS1
           ELSE IF
               (WS-SIGN1 = "-" AND WS-SIGN2 = "0" AND OPER = "SUB") OR
               (WS-SIGN1 = "0" AND WS-SIGN2 = "-" AND OPER = "SUB") THEN
               ADD WS-ABS2 TO WS-ABS1
           END-IF.
           IF WS-ABS1 = 0 THEN
               MOVE "00000" TO WS-AUX1
           END-IF.
           MOVE WS-AUX1 TO WS-ROWS-1(WS-CNT-1).
           ADD 1 TO WS-CNT-1.

       END PROGRAM ARITHMETIC-POL.
