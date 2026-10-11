Algoritmo "exercicio4-matriz.alg"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Exercicio:
// - Ler uma matriz 4 x 4, trocar os valores da 1ª linha pelos da 4ª coluna,
// e viceversa, e escrever a matriz obtida.
Var
   v: vetor[1..4, 1..4] de inteiro
   aux: vetor[1..4] de inteiro
   l, c:inteiro

Inicio
   para l de 1 ate 4 faca
      para c de 1 ate 4 faca
         escreva("Digite um valor para o coeficiente na posicao [", l, c, " ]:")
         leia(v[l,c])
      fimpara
   fimpara
   
   para c de 1 ate 4 faca
       aux[c] <- v[1,c]
   fimpara
   
   para c de 1 ate 4 faca
       v[1,c] <- v[c,4]
   fimpara
   
   para l de 1 ate 4 faca
       v[l,4] <- aux[l]
   fimpara
   
   escreval("------- Matriz --------")
   para l de  1 ate 4 faca
      para c de 1 ate 4 faca
         escreva(v[l,c]: 4)
      fimpara
      escreval()
   fimpara
         


   


   
            

Fimalgoritmo