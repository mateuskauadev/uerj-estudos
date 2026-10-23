#include <stdio.h>
#define n 2

int main()
{
    int A[n][n], i, j, lin, maior, soma = 0;

    for (i = 0; i < n; i++)
    {
        for (j = 0; j < n; j++)
        {
            printf("Digite um valor para A[%d][%d]:", i, j);
            scanf("%d", &A[i][j]);
        }
    }

    for (i = 0; i < n; i++)
    {
        for (j = 0; j < n; j++)
        {
            printf("%2d", A[i][j]);
        }
        printf("\n");
    }

    maior = A[0][0];
    lin = 0;

    for (i = 0; i < n; i++)
    {
        if (A[i][i] >= maior)
        {
            maior = A[i][i];
            lin = i;
        }
        soma = soma + A[i][n - 1 - i];
    }

    printf("maior:A[%d][%d] = %d \n", lin, lin, maior);
    printf("Soma:%d\n", soma);

    return 0;
}
