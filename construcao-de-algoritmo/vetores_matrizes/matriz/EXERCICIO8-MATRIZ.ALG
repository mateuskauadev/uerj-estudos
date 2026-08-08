Algoritmo "exercicio4-matriz.alg"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Exercicio:
// Ler uma matriz 8 x 8, transformá-la numa matriz triangular inferior, ou
// seja, atribuir 0 a todos os elementos acima da diagonal principal
// e escrever a matriz obtida.
Var
   v: vetor[1..8, 1..8] de inteiro
   l, c:inteiro

Inicio

  para l de 1 ate 8 faca
     para c de 1 ate 8 faca
        se (l < c) entao
           v[l,c] <- 0
        senao
           escreval("Digite um numero: ")
           leia(v[l,c])
        fimse
     fimpara
  fimpara
  
  escreval("----- Matriz -----")
  
  para l de 1 ate 8 faca
     para c de 1 ate 8 faca
         escreva(v[l,c]:4)
     fimpara
     escreval()
  fimpara
         


   


   
            

Fimalgoritmo