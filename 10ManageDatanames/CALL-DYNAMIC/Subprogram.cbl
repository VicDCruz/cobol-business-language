      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. SUBPROGRAM.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       LINKAGE SECTION.
       01 FULLNAME PIC X(12).
       01 PRODUCT PIC X(12).
       PROCEDURE DIVISION USING FULLNAME, PRODUCT.
       MAIN-PROCEDURE.
           DISPLAY "THE NAME IS - " FULLNAME.
           DISPLAY "THE PRODUCT IS - " PRODUCT.
           IF PRODUCT = "BUTTER"
               DISPLAY FULLNAME " BOUGHT A LITTLE BIT OF " PRODUCT
           ELSE
               DISPLAY "NO! SHE DOESN'T BOUGHT " PRODUCT
           END-IF.
       END PROGRAM SUBPROGRAM.
