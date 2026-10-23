#include <stdio.h>

int fatorial(int n)
{
    int i = 1, prod = 1;

    while (i <= n)
    {
        prod = prod * i;
        i = i + 1;
    }
    return prod;
}

int main()
{
    int n, resultado;

    do
    {
        printf("Digite um valor para n(n > 0) \n");
        scanf("%d", &n);
    } while (n <= 0);

    resultado = fatorial(n);

    printf("%d!: %d\n", n, resultado);

    return 0;
}