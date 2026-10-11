Algoritmo "exercicio7-vet"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Data atual  : 05/08/2026

// Exercicio:
//  Faça um programa que leia 7 nomes de pessoas e guarde-os em um vetor. No
// final, mostre uma listagem com todos os nomes informados, na ordem inversa
// daquela em que eles foram informados.
Var:

   v: vetor[0..6] de caractere
   nome: caractere
   i: inteiro


Inicio
   escreval("------------------------------------")
   escreval("          banco de dados")
   escreval("------------------------------------")
   para i de 0 ate 6 faca
      escreva("Digite o nome:")
      leia(nome)
      v[i] <- nome
   fimpara

   limpatela
   
   escreval("==================================")
   escreval("           Listagem")
   escreval("=================================")
   para i de 0 ate 6 faca
     escreval("Nome: ", v[6 - i])
   fimpara


Fimalgoritmo