# Triangle Verifier (trianglever)

Programa en C que determina si un triangulo es Equilatero, Isosceles o Escaleno segun la longitud de sus 3 lados.

## Compilacion

Requiere gcc instalado.

\```bash
gcc -Wall -o trianglever trianglever.c
\```

## Ejecucion

\```bash
./trianglever
\```

El programa va a pedir los 3 lados del triangulo como numeros de punto flotante.

## Ejemplo de uso

\```
Introduzca los 3 lados del triangulo
3 3 3
El triangulo es Equilatero
\```

## Notas

- `-Wall` activa todas las advertencias del compilador, util para detectar errores como usar `=` en vez de `==`.