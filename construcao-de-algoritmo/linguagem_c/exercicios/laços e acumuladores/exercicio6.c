#include <stdio.h>

float calculos(int n)
{
    int num = 1, den = 2, i = 1;
    float s = 0;
    while (i <= n)
    {
        s = s + (float)num / den;
        num = num + 2;
        den = den + 2;
        i = i + 1;
    }
    return s;
}

int main()
{
    int n;
    do
    {
        printf("Digite um valor para n(n > 0) \n");
        scanf("%d", &n);
    } while (n <= 0);
    printf("S = %f \n", calculos(n));
    return 0;
}