Algoritmo "exercicio4-matriz.alg"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Exercicio:
// Ler uma matriz 6 x 6 e atribuir o valor 0 aos valores negativos encontrados
// fora das diagonais principal e secundária.
Var
   v: vetor[1..6, 1..6] de inteiro
   l, c, maior, s :inteiro

Inicio

   para l de 1 ate 6 faca
      para c de 1 ate 6 faca
         escreva("Digite um valor para o coeficiente na posicao [", l, c, " ]:")
         leia(v[l,c])
      fimpara
   fimpara
   
   para l de 1 ate 6 faca
      para c de 1 ate 6 faca
         se (l=c) entao
         senao
            se ((l + c) = 7) entao
            senao
              se(v[l,c] < 0) entao
               v[l,c] <- 0
              fimse
            fimse
         fimse
      fimpara
   fimpara
   escreval()
   
   para l de 1 ate 6 faca
       para c de 1 ate 6 faca
          escreva(v[l,c]:4)
       fimpara
       escreval()
   fimpara
   

   


   
            

Fimalgoritmo