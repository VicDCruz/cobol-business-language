      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. READ-FILE.
       ENVIRONMENT DIVISION.
           INPUT-OUTPUT SECTION.
               FILE-CONTROL.
               SELECT POLY ASSIGN TO "../input.txt"
                   ORGANIZATION IS SEQUENTIAL
                   ACCESS IS SEQUENTIAL.
       DATA DIVISION.
           FILE SECTION.
           FD POLY.
           01 POLY-FILE.
               05 STUDENT-ID PIC 9(5).
               05 NAME PIC A(5).
               05 CLASX PIC X(3).
               05 EOF PIC A(1).

           WORKING-STORAGE SECTION.
           01 WS-POLY.
               05 WS-COEF PIC 9(38).
           01 WS-EOF PIC A(1).
           01 TU PIC 9(1).
           01 UT PIC 9(1).
           01 VU PIC 9(1).
           01 WS-SPACE PIC A(1) VALUE ' '.
           01 STARTING-POINT PIC 9(1) VALUE 1.
           01 MODEL.
               05 VAL1 PIC 9(3).
               05 VAL2 PIC 9(3).
               05 VAL3 PIC 9(3).
               05 VAL4 PIC 9(3).
           01 WS-TABLE.
               05 WS-A OCCURS 4 TIMES.
                   10 WS-ROWS OCCURS 4 TIMES.
                       15 WS-COLS PIC X(10) VALUE 'ADIOS'.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           OPEN INPUT POLY.
               PERFORM UNTIL WS-EOF='Y'
                   READ POLY INTO WS-POLY
                       AT END MOVE 'Y' TO WS-EOF
                       NOT AT END
                           DISPLAY "WS-POLY: " WS-POLY
                           DISPLAY "Length: " LENGTH OF POLY
                           UNSTRING WS-POLY DELIMITED BY WS-SPACE
                           INTO VAL1 VAL2 VAL3 VAL4
                           END-UNSTRING
                           DISPLAY "TABLE VALUES: "
                           DISPLAY MODEL
                           DISPLAY VAL1
                           DISPLAY WS-TABLE
                   END-READ
               END-PERFORM.
           CLOSE POLY.
       END PROGRAM READ-FILE.
