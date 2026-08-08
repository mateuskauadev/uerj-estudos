Algoritmo "exercicio3-vet"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Data atual  : 05/08/2026

// Exercicio:
// Crie um programa que preencha automaticamente (usando lógica, não apenas
// atribuindo diretamente) um vetor numérico com 10 posições, conforme abaixo:
// 5 10 15 20 25 30 35 40 45 50
// 0 1  2  3  4  5  6  7  8  9

Var:

   v: vetor[0..9] de inteiro
   i,s: inteiro


Inicio

   s <- 0
   para i de 0 ate 9 faca
       s <- s + 5
      v[i] <- s
   fimpara
   
   para i de 0 ate 9 faca
     escreval("O vetor [", i, " ] =", v[i])
   fimpara


Fimalgoritmo