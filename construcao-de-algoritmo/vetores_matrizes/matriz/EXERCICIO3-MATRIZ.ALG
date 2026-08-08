Algoritmo "exercicio3-matriz.alg"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Exercicio:
// Declarar uma matriz 5 x 5, preencher a diagonal principal com o
// valor 1 e com 0 os demais elementos e escrever a matriz obtida.
Var
   v: vetor[1..5, 1..5] de inteiro
   l,c: inteiro

Inicio
   para l de 1 ate 5 faca
     para c de 1 ate 5 faca
        se (l = c) entao
          v[l,c] <- 1
        senao
          v[l,c] <- 0
        fimse
     fimpara
   fimpara
   escreval("---- Matriz ----")
   para l de 1 ate 5 faca
     para c de 1 ate 5 faca
       escreva(v[l,c]:4)
     fimpara
       escreval()
   fimpara
   
Fimalgoritmo