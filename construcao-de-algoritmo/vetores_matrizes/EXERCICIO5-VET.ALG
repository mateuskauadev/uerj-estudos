Algoritmo "exercicio5-vet"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Data atual  : 05/08/2026

// Exercicio:
// Crie um programa que preencha automaticamente (usando lógica, não apenas
// atribuindo diretamente) um vetor numérico com 15 posições com os primeiros
// elementos da sequência de Fibonacci:
// 1 1 2 3 5 8 13 21 34 55 89 144 233 377 610 987
// 0 1 2 3 4 5 6  7  8  9  10 11  12  13  14  15
Var:

   v: vetor[0..14] de inteiro
   i,s: inteiro


Inicio
   v[0] <- 1
   v[1] <- 1

   para i de 2 ate 14 faca
      v[i] <- v[i - 1] + v[i - 2]
   fimpara
   
   para i de 0 ate 14 faca
     escreval("O vetor [", i, " ] =", v[i])
   fimpara


Fimalgoritmo