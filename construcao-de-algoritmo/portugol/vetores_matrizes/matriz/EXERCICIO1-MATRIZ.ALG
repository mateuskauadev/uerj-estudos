Algoritmo "exercicio1-matriz.alg"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Exercicio:
// Ler uma matriz 3 x 3 e mostrar os pares
// Data atual  : 15/07/2026
Var
   m: vetor[1..3, 1..3] de inteiro
   l,c: inteiro

Inicio
   para l <- 1 ate 3 faca
     para c <- 1 ate 3 faca
       escreva("Um valor para o vet na posição [", l, c, " ]: ")
       leia(m[l,c])
     fimpara
   fimpara
   
   escreval("------ Matriz ------")
   para l <- 1 ate 3 faca
     para c <- 1 ate 3 faca
        escreva(m[l,c]:5)
     fimpara
     escreval
   fimpara
   
   para l <- 1 ate 3 faca
     para c <- 1 ate 3 faca
        se (m[l,c] % 2 = 0) entao
          escreval("O vetor [", l, c, " ] =", m[l,c], " é par.")
        fimse
     fimpara
   fimpara
   
Fimalgoritmo