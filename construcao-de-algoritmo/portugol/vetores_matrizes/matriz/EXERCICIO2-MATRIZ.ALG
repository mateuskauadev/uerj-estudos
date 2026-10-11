Algoritmo "exercicio2-matriz.alg"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Exercicio:
// Ler uma matriz 10 x 10 e escrever a localização (linha e a coluna)
// do maior valor
Var
   v: vetor[1..10, 1..10] de inteiro
   l,c, lm, cm, maior: inteiro


Inicio
   para l de 1 ate 10 faca
     para c de 1 ate 10 faca
       escreva("Digite um valor para o vetor [", l, c, " ]:")
        leia(v[l,c])
     fimpara
   fimpara
   
   maior <- v[1,1]
   lm <- 1
   cm<- 1
   para l de 1 ate 10 faca
     para c de 1 ate 10 faca
        se (v[l,c] > maior) entao
           maior <- v[l,c]
           lm <- l
           cm <- c
        fimse
     fimpara
   fimpara
   
   escreval("O maior numero é o vetor [", lm , cm, " ]=", maior)
Fimalgoritmo