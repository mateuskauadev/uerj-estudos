#include <stdio.h>

float calculos(int n)
{
    int num = 1, den = n;
    float s = 0;
    while (num <= n)
    {
        s = s + (float)num / den;
        num = num + 2;
        den = den - 2;
    }
    return s;
}

int main()
{
    int n;
    do
    {
        printf("Digite um valor para n(n >0 e impar) \n");
        scanf("%d", &n);
    } while (n <= 0 || n % 2 == 0);

    printf("S: %f", calculos(n));
    return 0;
}