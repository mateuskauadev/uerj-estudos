#include <stdio.h>
#define n 10

int main()
{
    int A[n][n], maior, i, j, lin, col;

    for (i = 0; i < n; i++)
    {
        for (j = 0; j < n; j++)
        {
            printf("Digite um valor para a[%d][%d]:", i, j);
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
    col = 0;

    for (i = 0; i < n; i++)
    {
        for (j = 0; j < n; j++)
        {
            if (A[i][j] >= maior)
            {
                maior = A[i][j];
                lin = i;
                col = j;
            }
        }
    }

    printf("maior é o A[%d][%d]:%d \n", lin, col, maior);

    return 0;
}