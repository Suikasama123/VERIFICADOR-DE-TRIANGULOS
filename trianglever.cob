* Codigo de prueba en COBOL
IDENTIFICATION DIVISION.
       PROGRAM-ID. TRIANGLEVER.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 ENTRADA-A    PIC X(6).
       01 ENTRADA-B    PIC X(6).
       01 ENTRADA-C    PIC X(6).
       01 LADO-A       PIC 9(3)V99.
       01 LADO-B       PIC 9(3)V99.
       01 LADO-C       PIC 9(3)V99.
       01 SUMA-AB      PIC 9(4)V99.
       01 SUMA-AC      PIC 9(4)V99.
       01 SUMA-BC      PIC 9(4)V99.
       01 ERROR-FLAG   PIC 9 VALUE 0.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "Introduzca los 3 lados del triangulo".
           DISPLAY "Lado A: ".
           ACCEPT ENTRADA-A.
           DISPLAY "Lado B: ".
           ACCEPT ENTRADA-B.
           DISPLAY "Lado C: ".
           ACCEPT ENTRADA-C.

           IF ENTRADA-A IS NOT NUMERIC OR
              ENTRADA-B IS NOT NUMERIC OR
              ENTRADA-C IS NOT NUMERIC
               DISPLAY "Error: debe ingresar solo numeros validos"
               MOVE 1 TO ERROR-FLAG
           END-IF.

           IF ERROR-FLAG = 0
               MOVE ENTRADA-A TO LADO-A
               MOVE ENTRADA-B TO LADO-B
               MOVE ENTRADA-C TO LADO-C

               IF LADO-A = 0 OR LADO-B = 0 OR LADO-C = 0
                   DISPLAY "Error: los lados deben ser mayores a cero"
                   MOVE 1 TO ERROR-FLAG
               END-IF
           END-IF.

           IF ERROR-FLAG = 0
               COMPUTE SUMA-AB = LADO-A + LADO-B
               COMPUTE SUMA-AC = LADO-A + LADO-C
               COMPUTE SUMA-BC = LADO-B + LADO-C

               IF SUMA-AB <= LADO-C OR
                  SUMA-AC <= LADO-B OR
                  SUMA-BC <= LADO-A
                   DISPLAY "Error: esos lados no forman un "
                       "triangulo valido"
                   MOVE 1 TO ERROR-FLAG
               END-IF
           END-IF.

           IF ERROR-FLAG = 0
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
               END-IF
           END-IF.

           STOP RUN.
