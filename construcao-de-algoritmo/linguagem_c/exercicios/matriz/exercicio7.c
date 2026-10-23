#include <stdio.h>
#define n 4

int main()
{
    int A[n][n], i, j, aux;

    for (i = 0; i < n; i++)
    {
        for (j = 0; j < n; j++)
        {
            printf("Digite um valor para A[%d][%d]:", i, j);
            scanf("%d", &A[i][j]);
        }
    }

    // Matriz original
    printf("-----Matriz original----- \n");
    for (i = 0; i < n; i++)
    {
        for (j = 0; j < n; j++)
        {
            printf("%4d", A[i][j]);
        }
        printf("\n");
    }

    for (j = 0; j < n; j++)
    {
        aux = A[0][j];
        A[0][j] = A[j][3];
        A[j][3] = aux;
    }

    // Matriz nova
    printf("-----Matriz Nova----- \n");
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