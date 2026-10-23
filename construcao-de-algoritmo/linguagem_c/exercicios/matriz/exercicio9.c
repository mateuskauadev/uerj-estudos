#include <stdio.h>
#define n 6

int main()
{
    int A[n][n], i, j;

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

    printf("----Matriz nova----\n");

    for (i = 0; i < n; i++)
    {
        for (j = 0; j < n; j++)
        {
            if (i != j && (i + j != n - 1) && A[i][j] < 0)
            {
                A[i][j] = 0;
            }
        }
    }
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