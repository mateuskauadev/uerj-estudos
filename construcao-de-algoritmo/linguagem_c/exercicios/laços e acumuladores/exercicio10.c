#include <stdio.h>

int primo(int n)
{
    int i = 1, c = 0;

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
    int n, numero;

    printf("Digite um valor para n e te falaremos se e primo ou nao\n");
    scanf("%d", &n);

    numero = primo(n);

    if (numero == 1)
        printf("e primo\n");
    else
        printf("nao e primo\n");

    return 0;
}