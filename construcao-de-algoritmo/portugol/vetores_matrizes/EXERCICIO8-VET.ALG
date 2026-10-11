Algoritmo "exercicio9-vet"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Data atual  : 05/08/2026

// Exercicio:
// Desenvolva um programa que leia 10 números inteiros e guarde-os em um vetor.
// No final, mostre quais são os números pares que foram digitados e em que
// posições eles estão armazenados.
Var:

   v: vetor[0..9] de inteiro
   n: inteiro
   i: inteiro


Inicio

  para i de 0 ate 9 faca
     escreval("Digite um numero inteiro: ")
     leia(n)
     v[i] <- n
  fimpara
  limpatela
  
  para i de 0 ate 9 faca
     se (v[i] % 2 = 0) entao
       escreval("vetor [", i, " ] =", v[i], " é divisivel par")
     fimse
  fimpara
Fimalgoritmo