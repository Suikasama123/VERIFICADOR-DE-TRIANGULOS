#include<stdio.h>
int main(){
    float a, b, c;
    printf("\n Introduzca los 3 lados del triangulo");
    if(scanf("%f %f %f", &a, &b, &c) != 3){
        printf("\n Error: debe ingresar 3 numeros validos para los lados");
        return 1;
    }
    if(a <= 0 || b <= 0 || c <= 0){
        printf("\n Error: los lados deben ser numeros positivos mayores a cero");
        return 1;
    }
    if(a > 1000000 || b > 1000000 || c > 1000000){
        printf("\n Error: los lados ingresados son demasiado grandes");
        return 1;
    }
    if(a + b <= c || a + c <= b || b + c <= a){
        printf("\n Error: esos lados no forman un triangulo valido");
        return 1;
    }
    if(a == b && b == c){
        printf("\n El triangulo es Equilatero");
    } else if((a == b && a != c) || (b == c && b != a) || (a == c && a != b)) {
        printf("\n El triangulo es Isosceles");
    } else{
        printf("\n El triangulo es Escaleno");
    }
    return 0;
}
