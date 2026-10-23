#include <stdio.h>

float soma(int n)
{
    int num = 1, den = 1, prod = 1;
    float soma = 1;

    while (den <= n)
    {
        prod = prod * den;
        soma = soma + (float)num / prod;
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
        printf("Digite um valor para n(N > 0)\n");
        scanf("%d", &n);
    } while (n <= 0);

    resultado = soma(n);

    printf("soma: %f \n", resultado);

    return 0;
}
