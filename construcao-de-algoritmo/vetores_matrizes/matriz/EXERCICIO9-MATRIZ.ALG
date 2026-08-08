Algoritmo "exercicio4-matriz.alg"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Exercicio:
// Ler uma matriz 8 x 8, identificar e escrever o maior elemento da diagonal
// principal e a soma dos elementos da diagonal secundária.


Var
   v: vetor[1..8, 1..8] de inteiro
   l, c, maior, s :inteiro

Inicio

   para l de 1 ate 8 faca
      para c de 1 ate 8 faca
         escreva("Digite um valor para o coeficiente na posicao [", l, c, " ]:")
         leia(v[l,c])
      fimpara
   fimpara
   
   //maior elemento da matriz principal
   maior <- v[1,1]
   para l de 1 ate 8 faca
      para c de 1 ate 8 faca
         se (l = c) entao
            se (v[l,c] > maior) entao
               maior <- v[l,c]
            fimse
         fimse
      fimpara
   fimpara
   escreval()
   
   escreval("O maior coeficiente esta na posição [", l, ",", c, " ] e é igual a", maior)
   
    //Diagonal secundaria
    s <- 0
    para l de 1 ate 8 faca
       para c de 1 ate 8 faca
          se ((l + c) = 9) entao
             escreval("O numero",v[l,c], " pertence a diagonal secundaria.")
             s <- s + v[l,c]
          fimse
       fimpara
    fimpara
    escreval()


    escreva("A soma dos coeficientes da diagonal segundaria é", s)


   


   
            

Fimalgoritmo