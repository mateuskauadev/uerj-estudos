#include <stdio.h>

float soma(int n)
{
    int den = 1, num = 1;
    float soma = 0;
    while (den <= n)
    {
        soma = soma + (float)num / den;
        den = den + 1;
    }
    return soma;
}

int main()
{
    int n;
    float resultado;

    do
    {
        printf("Digite um valor para n (n > 0)\n");
        scanf("%d", &n);
    } while (n <= 0);

    resultado = soma(n);

    printf("soma: %f\n", resultado);

    return 0;
}