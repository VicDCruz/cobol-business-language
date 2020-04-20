      ******************************************************************
      * Author: Viridiana Marlen González F.
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. WRITEVERB.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
       SELECT EMPLOYEE ASSIGN TO 'file2.txt'
       ORGANIZATION IS SEQUENTIAL
       ACCESS IS SEQUENTIAL.

       DATA DIVISION.
       FILE SECTION.
       FD EMPLOYEE.
       01 EMPLOYEE-FILE.
        05 EMPLOYEE-ID PIC X(5).
        05 NAME PIC A(10).
        05 RANK PIC X(3).

       WORKING-STORAGE SECTION.
       01 WS-EMPLOYEE.
       05 WS-EMPLOYEE-ID PIC 9(5).
       05 WS-NAME PIC A(25).
       05 WS-RANK PIC X(3).

       PROCEDURE DIVISION.
       DISPLAY 'WRITING TO A SEQUENTIAL FILE..'
       OPEN EXTEND EMPLOYEE.
       MOVE '100' TO EMPLOYEE-ID.
       MOVE 'NIKITA' TO NAME.
       MOVE '5' TO RANK.
       WRITE EMPLOYEE-FILE
       END-WRITE.
       CLOSE EMPLOYEE.
       STOP RUN.
