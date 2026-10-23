#include <stdio.h>

int main()
{
    int valor, soma = 0, prod = 1, cont = 0, sim = 1;
    float media;
    while (sim == 1)
    {
        scanf("%d", &valor);
        soma += valor;
        prod *= valor;
        printf("Deseja continuar( sim = 1 )? \n");
        scanf("%d", &sim);
        cont++;
    }
    media = (float)soma / cont;
    printf("%f %d", media, prod);
    return 0;
}