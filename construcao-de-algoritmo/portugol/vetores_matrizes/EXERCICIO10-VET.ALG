Algoritmo "exercicio10-vet"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Data atual  : 05/08/2026

// Exercicio:
// Faça um algoritmo que preencha um vetor de 30 posições com números entre 1 e
// 15 sorteados pelo computador. Depois disso, peça para o usuário digitar um
// número (chave) e seu programa deve mostrar em que posições essa chave foi
// encontrada. Mostre também quantas vezes a chave foi sorteada
Var:

   v: vetor[0..29] de inteiro
   n, s: inteiro
   i: inteiro


Inicio
  s <- 0
  escreval("----------------------------------------")
  escreval("                sorteio ")
  escreval("----------------------------------------")
  
  para i de 0 ate 29 faca
     v[i] <- randi(15) + 1
  fimpara

  escreval("Digite um numero e direi em qual posição ele ficou")
  leia(n)
  
  para i de 0 ate 29 faca
     se (v[i] = n) entao
       escreval("seu numero ficou na posição", i)
       s <- s + 1
     fimse
  fimpara
  
  se (s > 0) entao
    escreval("Seu numero apareceu ", s, " vezes.")
  senao
    escreval("Seu numero não foi sorteado")
  fimse
    
Fimalgoritmo