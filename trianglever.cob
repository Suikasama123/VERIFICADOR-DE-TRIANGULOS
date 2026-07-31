* Codigo de prueba en COBOL
IDENTIFICATION DIVISION.
       PROGRAM-ID. TRIANGLEVER.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 LADO-A       PIC 9(3)V99.
       01 LADO-B       PIC 9(3)V99.
       01 LADO-C       PIC 9(3)V99.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "Introduzca los 3 lados del triangulo".
           DISPLAY "Lado A: ".
           ACCEPT LADO-A.
           DISPLAY "Lado B: ".
           ACCEPT LADO-B.
           DISPLAY "Lado C: ".
           ACCEPT LADO-C.

           IF LADO-A = LADO-B AND LADO-B = LADO-C
               DISPLAY "El triangulo es Equilatero"
           ELSE
               IF (LADO-A = LADO-B AND LADO-A NOT = LADO-C) OR
                  (LADO-B = LADO-C AND LADO-B NOT = LADO-A) OR
                  (LADO-A = LADO-C AND LADO-A NOT = LADO-B)
                   DISPLAY "El triangulo es Isosceles"
               ELSE
                   DISPLAY "El triangulo es Escaleno"
               END-IF
           END-IF.

           STOP RUN.
