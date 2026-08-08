Algoritmo "exercicio4-matriz.alg"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Exercicio:
// Ler uma matriz 20 x 20 e um valor X. Em seguida, buscar pelo valor X na
// matriz e, se for encontrado, informar a posição.Caso contrário, informar
// que o valor não foi encontrado.
Var
   v: vetor[1..20, 1..20] de inteiro
   l, c, x, lc, cp:inteiro
   encontrado: logico

Inicio
   para l de 1 ate 20 faca
      para c de 1 ate 20 faca
         escreva("Digite um valor para o coeficiente na posicao [", l, c, " ]:")
         leia(v[l,c])
      fimpara
   fimpara
   
   escreval("Digite um valor para x: ")
   leia(x)

   encontrado <- falso
   para l de 1 ate 20 faca
      para c de 1 ate 20 faca
         se (v[l,c] = x) entao
            lp <- l
            cp <- c
            encontrado <- verdadeiro
         fimse
      fimpara
   fimpara
      
   se (encontrado) entao
      escreval("O valor", x,  " aparece na posição [", lp, ",", cp, "].")
   senao
      escreval("O valor", x, "não foi encontrado na matriz.")
   fimse

   


   
            

Fimalgoritmo