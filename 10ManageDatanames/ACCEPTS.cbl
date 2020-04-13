      ******************************************************************
      * Author: Viridiana Marlen González F.
      * Date: April 12, 2020
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ACCEPTS.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 AGE PIC 9(03).
       01 GENDER PIC X(01).
       PROCEDURE DIVISION.
       ACCEPT AGE.
       ACCEPT GENDER.
       EVALUATE TRUE ALSO TRUE
       WHEN AGE > 018 ALSO GENDER = 'M'
       DISPLAY 'THE BOY IS MAJOR'
       WHEN AGE > 018 ALSO GENDER = 'F'
       DISPLAY 'THE GIRL IS MAJOR'
       WHEN AGE <= 018 ALSO GENDER = 'M'
       DISPLAY 'THE BOY IS MINOR'
       WHEN AGE <= 018 ALSO GENDER = 'F'
       DISPLAY 'THE GIRL IS MINOR'
       WHEN OTHER
       DISPLAY 'INVALID INPUT'
       END-EVALUATE
       STOP RUN.
       END PROGRAM ACCEPTS.
