       IDENTIFICATION DIVISION.
       PROGRAM-ID. IF-Example.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 UserInput PIC X(20).

       PROCEDURE DIVISION.
       DISPLAY "Please enter your name in upper-case: ".
       ACCEPT UserInput.
       IF UserInput IS ALPHABETIC-LOWER
        MOVE FUNCTION UPPER-CASE (UserInput) TO UserInput
        DISPLAY "Please uppercase. Fixed it, ", UserInput
        ELSE DISPLAY "Hello, ", UserInput

       END-IF
       STOP RUN.
       END PROGRAM IF-Example.
