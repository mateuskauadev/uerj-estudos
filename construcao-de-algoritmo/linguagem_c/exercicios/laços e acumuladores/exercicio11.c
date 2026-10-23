#include <stdio.h>

int primo(int n)
{
    int c = 0, i = 1;
    while (i <= n)
    {
        if (n % i == 0)
            c = c + 1;
        i = i + 1;
    }
    if (c == 2)
        return 1;
    else
        return 0;
}

int main()
{
    int n = 100, resultado;

    printf("----Lista de numeros primos entre 100 e 1000----\n");

    while (n <= 1000)
    {
        resultado = primo(n);
        if (resultado == 1)
            printf("%d\n", n);
        n = n + 1;
    }
    return 0;
}