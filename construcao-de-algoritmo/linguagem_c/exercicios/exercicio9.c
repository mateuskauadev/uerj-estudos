#include <stdio.h>
#define n 3

int main()
{
    int i, j, A[n][n], R[n][n], soma = 0;
    float media;
    for (i = 0; i < n; i++)
    {
        for (j = 0; j < n; j++)
        {
            printf("Digite os valores para a posicao A[%d][%d]:\n", i, j);
            scanf("%d", &A[i][j]);
        }
    }

    printf("-------Matriz Original--------\n");

    for (i = 0; i < n; i++)
    {
        for (j = 0; j < n; j++)
        {
            printf("%d ", A[i][j]);
        }
        printf("\n");
    }

    printf("-------Matriz rotacionada---------\n");

    for (i = 0; i < n; i++)
    {
        for (j = 0; j < n; j++)
        {
            R[i][j] = A[n - 1 - j][i];
        }
    }

    for (i = 0; i < n; i++)
    {
        for (j = 0; j < n; j++)
        {
            printf("%d ", R[i][j]);
        }
        printf("\n");
    }

    for (i = 0; i < n; i++)
    {
        soma = soma + R[i][n - 1 - i];
    }
    media = (float)soma / n;
    printf("media: %f\n", media);

    return 0;
}