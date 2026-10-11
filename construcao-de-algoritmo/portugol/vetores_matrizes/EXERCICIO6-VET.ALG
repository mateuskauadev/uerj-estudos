Algoritmo "exercicio6-vet"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Data atual  : 05/08/2026

// Exercicio:
// Crie um programa que preencha automaticamente um vetor numérico com 7
// números gerados aleatoriamente pelo computador e depois mostre os valores
// gerados na tela.
Var:

   v: vetor[0..6] de inteiro
   i: inteiro


Inicio

   para i de 0 ate 6 faca
      v[i] <- randi(100)
   fimpara

   para i de 0 ate 6 faca
     escreval("O vetor [", i, " ] =", v[i])
   fimpara


Fimalgoritmo