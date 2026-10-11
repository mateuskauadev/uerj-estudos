#include <stdio.h>

#define n 3

int main()
{

    int i, j, A[n][n];

    for (i = 0; i < n; i++)
    {
        for (j = 0; j < n; j++)
        {
            printf("Digite os valores para a posicao A[%d][%d]:\n", i, j);
            scanf("%d", &A[i][j]);
        }
    }
    for (i = 0; i < n; i++)
    {
        for (j = 0; j < n; j++)
        {
            printf("%d ", A[i][j]);
        }
        printf("\n ");
    }
    return 0;
}