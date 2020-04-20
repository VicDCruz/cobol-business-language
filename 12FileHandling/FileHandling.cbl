      ******************************************************************
      * Author: Viridiana Marlen González F.
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. FileHandling.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT EMPLOYEE
           ASSIGN TO 'Employee.dat'
           ORGANISATION IS LINE SEQUENTIAL
           FILE STATUS IS EMP-FILESTATUS.

       DATA DIVISION.
       FILE SECTION.

       FD EMPLOYEE.
       01 EMPLOYEE-RECORD.
       05 EMP-ID            PIC X(10).
       05 FILLER            PIC X(1).
       05 EMP-NAME          PIC X(30).
       05 FILLER            PIC X(1).
       05 EMP-EXP           PIC 9(1).
      *
       WORKING-STORAGE SECTION.

       01 EMP-FILESTATUS PIC X(02).
       01 EMP-READ-STATUS PIC X(1).
           88 EMP-END-OF-FILE VALUE 'Y'.
           88 NOT-END-OF-FILE VALUE 'N'.
       01  EMP-REQUESTS PIC 9(1) VALUE ZERO.
      *
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

       OPEN INPUT EMPLOYEE
       EVALUATE TRUE
       WHEN EMP-FILESTATUS = "35"
        DISPLAY " FILE NOT FOUND "
        DISPLAY " FILE STATUS IS : " EMP-FILESTATUS
        GO TO PROGRAM-END-PARA
       WHEN EMP-FILESTATUS = "00"
        PERFORM READ-EMPLOYEE-PARA THRU READ-EXIT
        UNTIL EMP-END-OF-FILE
        IF EMP-REQUESTS = 0 THEN
            DISPLAY "NO REQUEST FOR THE DAY"
        ELSE
            DISPLAY "NUMBER OF REQUEST : " EMP-REQUESTS
        END-IF
        PERFORM CLOSE-FILE
       WHEN OTHER
         DISPLAY " ERROR FOUND..! "
         DISPLAY " FILE STATUS IS : " EMP-FILESTATUS
       END-EVALUATE.

       READ-EMPLOYEE-PARA.
       READ EMPLOYEE
        AT END
            SET EMP-END-OF-FILE TO TRUE
        NOT AT END
            ADD 1 TO EMP-REQUESTS
            ON SIZE ERROR
                DISPLAY " SIZE ERROR AT POS-A "
                GO TO CLOSE-FILE
            END-ADD
       END-READ.
       READ-EXIT.
       EXIT.

       CLOSE-FILE.
       CLOSE EMPLOYEE.

       PROGRAM-END-PARA.
       STOP RUN.
       END PROGRAM FileHandling.
