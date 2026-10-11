Algoritmo "exercicio12"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Data atual  : 06/08/2026

// Exercicio:
// Crie uma lógica que preencha um vetor de 20 posições com números
// aleatórios (entre 0 e 99) gerados pelo computador. Logo em seguida, mostre os
// números gerados e depois coloque o vetor em ordem crescente, mostrando no final
// os valores ordenados

Var
  vet: vetor[0..19] de inteiro
  i, j, aux: inteiro


Inicio
  para i de 0 ate 19 faca
     vet[i] <- randi(100)
     escreval(vet[i])
  fimpara
  escreval
  
  para i de 0 ate 18 faca
    para j de i + 1 ate 19 faca
       se (vet[i] > vet[j]) entao
         aux <- vet[i]
         vet[i] <- vet[j]
         vet[j] <- aux
       fimse
    fimpara
  fimpara
  
  escreval("--- vetor ordenado ---")
  para i de 0 ate 19 faca
    escreva(vet[i])
  fimpara
  
  
   




Fimalgoritmo