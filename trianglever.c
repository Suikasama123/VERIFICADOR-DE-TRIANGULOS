#include<stdio.h>
int main(){
    float a, b, c;
    printf("\n Introduzca los 3 lados del triangulo");
    scanf("%f %f %f", &a, &b, &c);

    if(a == b && b == c){
        printf("\n El triangulo es Equilatero");
    } else if((a == b && a != c) || (b == c && b != a) || (a == c && a != b)) {
        printf("\n El triangulo es Isosceles");
    } else{
        printf("\n El triangulo es Escaleno");
    }

    return 0;
}