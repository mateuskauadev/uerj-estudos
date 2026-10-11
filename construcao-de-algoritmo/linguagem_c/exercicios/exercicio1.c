#include <stdio.h>

int main()
{
    int n1, n2, soma;
    float media;
    printf("Digite 2 numeros inteiros: \n");
    scanf("%d", &n1);
    scanf("%d", &n2);
    soma = n1 + n2;
    media = (float)soma / 2;
    printf("Soma: %d , media: %f \n", soma, media);
    return 0;
}
