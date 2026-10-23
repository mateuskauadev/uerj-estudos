#include <stdio.h>

int main()
{
    int n, f0 = 0, f1 = 1, f2, i;

    do
    {
        printf("Digite N (N > 0): ");
        scanf("%d", &n);
    } while (n <= 0);

    for (i = 3; i <= n; i++)
    {
        f2 = f0 + f1;
        f0 = f1;
        f1 = f2;
    }

    if (n == 1)
        printf("O termo %d e: %d\n", n, f0);
    else
        printf("O termo %d e: %d\n", n, f1);

    return 0;
}