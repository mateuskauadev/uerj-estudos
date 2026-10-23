#include <stdio.h>
#define n 8

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

    printf("----Matriz Original----\n");

    for (i = 0; i < n; i++)
    {
        for (j = 0; j < n; j++)
        {
            printf("%4d", A[i][j]);
        }
        printf("\n");
    }

    for (i = 0; i < n; i++)
    {
        for (j = 0; j < n; j++)
        {
            if (j > i)
            {
                A[i][j] = 0;
            }
        }
    }

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