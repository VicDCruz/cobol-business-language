      ******************************************************************
      * Author: Viridiana Marlen González F.
      * Date: April 12, 2020
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID.   USAGE-MultipleTwoNumbers.
       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01  Num1           pic 99 USAGE computational value is zero.
       01  Num2           pic 99 USAGE computational value is zero.
       01  Result         pic 999 USAGE computational value is zero.

       PROCEDURE DIVISION.
       DISPLAY "Enter first number: ".
       ACCEPT Num1.
       DISPLAY "Enter second number: ".
       ACCEPT Num2.
       MULTIPLY Num1 by Num2 giving Result.
       DISPLAY "Result is = ", Result.
       STOP RUN.
       END PROGRAM USAGE-MultipleTwoNumbers.
