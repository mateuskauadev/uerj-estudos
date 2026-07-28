Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 15/07/2026
Var
    c, v, tot010, s: inteiro


Inicio
   tot010 <- 0
   s <- 0
   para c <- 1 ate 3 faca
      escreval("Digtie um valor:")
      leia(V)
      se (V%2=1) entao
           s <- s + v
      fimse
      se ((v>=0) e (v<=10)) entao
          tot010 <- tot010 + 1
      fimse
      
   fimpara
   escreval("estao entro 0 e 10,", tot010, " numeros.")
   escreval("a soma de impar sera", s)
Fimalgoritmo