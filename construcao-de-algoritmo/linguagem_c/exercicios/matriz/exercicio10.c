#include <stdio.h>
#define n 3

void inverso(int A[n][n])
{
    int aux, i;
    for (i = 0; i < n; i++)
    {

        aux = A[i][i];
        A[i][i] = A[i][n - 1 - i];
        A[i][n - 1 - i] = aux;
    }
}

int main()
{
    int A[n][n], i, j, resultado;

    for (i = 0; i < n; i++)
    {
        for (j = 0; j < n; j++)
        {
            printf("Digite um valor para A[%d][%d]:", i, j);
            scanf("%d", &A[i][j]);
        }
    }

    printf("---Matriz original---\n");

    for (i = 0; i < n; i++)
    {
        for (j = 0; j < n; j++)
        {
            printf("%4d", A[i][j]);
        }
        printf("\n");
    }

    inverso(A);

    printf("----Matriz nova----\n");

    for (i = 0; i < n; i++)
    {
        for (j = 0; j < n; j++)
        {
            printf("%4d", A[i][j]);
        }
        printf("\n");
    }
    return 0;
}