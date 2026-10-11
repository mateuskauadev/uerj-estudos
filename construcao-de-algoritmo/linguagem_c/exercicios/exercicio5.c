#include <stdio.h>

float calculos(int n)
{
    int num = 1, den = 1;
    float som = 0;
    while (den <= n)
    {
        som = som + (float)num / den;
        den = den + 1;
    }
    return som;
}
int main()
{
    int n;
    do
    {
        printf("Digite um numero para n (n > 0)\n");
        scanf("%d", &n);
    } while (n <= 0);

    printf(" S: %f \n", calculos(n));
    return 0;
}