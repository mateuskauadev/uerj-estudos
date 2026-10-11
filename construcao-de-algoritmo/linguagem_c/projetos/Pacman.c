/*
 * PAC-MAN - Construcao de Algoritmos - UERJ
 * Dupla:
 *   - NOME DO ALUNO 1
 *   - NOME DO ALUNO 2
 *
 * Teclas: W (cima), S (baixo), A (esquerda), D (direita) + ENTER
 * O arquivo mapas.txt precisa estar na mesma pasta do programa.
 */

#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define LIN 11     /* linhas do labirinto */
#define COL 21     /* colunas do labirinto */
#define MAXFANT 10 /* maximo de fantasmas */

char mapa[LIN][COL];
int jogLin, jogCol;                     /* posicao do jogador */
int fantLin[MAXFANT], fantCol[MAXFANT]; /* posicao dos fantasmas */
int numFant = 0;
int coletados = 0, restantes = 0;

/* Le o arquivo e escolhe um mapa aleatorio. Retorna 0 se der erro. */
int carregarMapa()
{
    FILE *arq;
    char linha[100];
    int qtd, sorteado, i, l, c;

    arq = fopen("mapas.txt", "r");
    if (arq == NULL)
        return 0;

    fscanf(arq, "%d", &qtd); /* primeira linha: quantos mapas tem */
    fgets(linha, 100, arq);  /* pula o resto da primeira linha */

    sorteado = rand() % qtd;

    /* le os mapas ate chegar no sorteado (o ultimo lido fica salvo) */
    for (i = 0; i <= sorteado; i++)
    {
        for (l = 0; l < LIN; l++)
        {
            fgets(linha, 100, arq);
            for (c = 0; c < COL; c++)
                mapa[l][c] = linha[c];
        }
    }
    fclose(arq);

    /* acha o jogador, os fantasmas e conta os pontos */
    for (l = 0; l < LIN; l++)
    {
        for (c = 0; c < COL; c++)
        {
            if (mapa[l][c] == 'P')
            {
                jogLin = l;
                jogCol = c;
                mapa[l][c] = ' ';
            }
            else if (mapa[l][c] == 'G')
            {
                fantLin[numFant] = l;
                fantCol[numFant] = c;
                numFant++;
                mapa[l][c] = '.'; /* embaixo do fantasma tem um ponto */
            }
            if (mapa[l][c] == '.')
                restantes++;
        }
    }
    return 1;
}

/* Retorna 1 se tem algum fantasma na posicao (l, c) */
int temFantasma(int l, int c)
{
    int i;
    for (i = 0; i < numFant; i++)
        if (fantLin[i] == l && fantCol[i] == c)
            return 1;
    return 0;
}

/* Mostra o labirinto e o placar */
void desenhar()
{
    int l, c;
    /* limpa a tela */
#ifdef _WIN32
    system("cls"); /* Windows */
#else
    printf("\033[H\033[2J"); /* Linux, Mac e OnlineGDB */
#endif
    for (l = 0; l < LIN; l++)
    {
        for (c = 0; c < COL; c++)
        {
            if (l == jogLin && c == jogCol)
                printf("P");
            else if (temFantasma(l, c))
                printf("G");
            else
                printf("%c", mapa[l][c]);
        }
        printf("\n");
    }
    printf("Pontos coletados: %d | Pontos restantes: %d\n", coletados, restantes);
}

/* Move o jogador. Retorna 1 se andou e 0 se nao andou. */
int moverJogador(char tecla)
{
    int novaLin = jogLin, novaCol = jogCol;

    if (tecla == 'w' || tecla == 'W')
        novaLin--;
    else if (tecla == 's' || tecla == 'S')
        novaLin++;
    else if (tecla == 'a' || tecla == 'A')
        novaCol--;
    else if (tecla == 'd' || tecla == 'D')
        novaCol++;
    else
        return 0; /* tecla invalida */

    if (mapa[novaLin][novaCol] == '#')
        return 0; /* parede */

    jogLin = novaLin;
    jogCol = novaCol;

    if (mapa[jogLin][jogCol] == '.')
    { /* coleta o ponto */
        mapa[jogLin][jogCol] = ' ';
        coletados++;
        restantes--;
    }
    return 1;
}

/* Move o fantasma i: metade das vezes vai atras do jogador,
   na outra metade escolhe uma direcao aleatoria */
void moverFantasma(int i)
{
    int novaLin = fantLin[i], novaCol = fantCol[i];
    int direcao = rand() % 4; /* 0 cima, 1 baixo, 2 esquerda, 3 direita */

    if (rand() % 2 == 0)
    {
        if (jogLin < fantLin[i])
            direcao = 0;
        else if (jogLin > fantLin[i])
            direcao = 1;
        else if (jogCol < fantCol[i])
            direcao = 2;
        else
            direcao = 3;
    }

    if (direcao == 0)
        novaLin--;
    else if (direcao == 1)
        novaLin++;
    else if (direcao == 2)
        novaCol--;
    else
        novaCol++;

    /* so anda se nao for parede nem outro fantasma */
    if (mapa[novaLin][novaCol] != '#' && !temFantasma(novaLin, novaCol))
    {
        fantLin[i] = novaLin;
        fantCol[i] = novaCol;
    }
}

int main()
{
    char tecla;
    int i, perdeu = 0, invalido = 0;

    srand(time(NULL));

    if (!carregarMapa())
    {
        printf("Erro: nao foi possivel abrir o arquivo mapas.txt\n");
        return 1;
    }

    while (restantes > 0 && !perdeu)
    {
        desenhar();
        if (invalido)
            printf("Movimento invalido!\n");
        printf("Movimento (W/A/S/D): ");
        if (scanf(" %c", &tecla) != 1) /* fim da entrada */
            break;

        invalido = 0;
        if (!moverJogador(tecla))
        {
            invalido = 1;
            continue;
        }

        if (temFantasma(jogLin, jogCol)) /* andou em cima de um fantasma */
            perdeu = 1;

        /* os fantasmas se movem um apos o outro */
        for (i = 0; i < numFant && !perdeu && restantes > 0; i++)
        {
            moverFantasma(i);
            if (temFantasma(jogLin, jogCol))
                perdeu = 1;
        }
    }

    desenhar();
    if (perdeu)
        printf("GAME OVER! Um fantasma te pegou.\n");
    else if (restantes == 0)
        printf("PARABENS! Voce coletou todos os pontos!\n");

    return 0;
}