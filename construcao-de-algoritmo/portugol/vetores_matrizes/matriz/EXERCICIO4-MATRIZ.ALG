Algoritmo "exercicio4-matriz.alg"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Exercicio:
// Ler duas matrizes 4 x 4 e escrever uma terceira com os maiores elementos
// entre as primeiras.
Var
   v1: vetor[1..4, 1..4] de inteiro
   v2: vetor[1..4, 1..4] de inteiro
   v3: vetor[1..4, 1..4] de inteiro
   l,c: inteiro

Inicio
   // Preenchendo o matriz 1
   escreval("--------- matriz 1 ---------")
   para l de 1 ate 4 faca
      para c de 1 ate 4 faca
         escreva("Digite um valor para vetor [", l, c, " ]: ")
         leia(v1[l,c])
      fimpara
   fimpara

   // Preencgendo o matriz 2
   escreval("--------- matriz 2 ---------")
   para l de 1 ate 4 faca
      para c de 1 ate 4 faca
         escreva("Digite um valor para vetor [", l, c, " ]: ")
         leia(v2[l,c])
      fimpara
   fimpara

   // Preencgendo o matriz 3
   escreval("--------- matriz 3 ---------")
   para l de 1 ate 4 faca
      para c de 1 ate 4 faca
         se (v1[l,c] >= v2[l,c]) entao
            v3[l,c] <- v1[l,c]
         senao
            v3[l,c] <- v2[l,c]
         fimse
      fimpara
   fimpara
   
   para l de 1 ate 4 faca
      para c de 1 ate 4 faca
        escreva(v3[l,c]:4)
      fimpara
      escreval()
   fimpara



Fimalgoritmo