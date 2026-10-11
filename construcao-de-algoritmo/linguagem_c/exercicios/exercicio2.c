#include <stdio.h>

float calculas(int n)
{
    int i;
    float s = 0;
    for (i = 1; i <= n; i++)
    {
        s = s + (float)i / (n - i + 1);
    }
    return s;
}
int main()
{
    int n;
    do
    {
        printf("Digite um valor para n(n > 0): \n");
        scanf("%d", &n);
    } while (n <= 0);

    printf("s = %f \n", calculas(n));
    return 0;
}