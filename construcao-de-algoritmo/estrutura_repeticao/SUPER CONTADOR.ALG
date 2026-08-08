Algoritmo "super contador"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 14/07/2026
Var
   opcao, c: inteiro

Inicio
repita
   escreval("==========menu de contador==========")
   escreval("         [1] de 1 a 10 ")
   escreval("         [2] de 10 a 9 ")
   escreval("         [3] sair ")
   escreval("====================================")
   escreval("Selecione a opção:")
   leia(opcao)
   se(opcao = 1) entao
     c <- 1
     repita
          escreva(c ,"...")
          c <- c + 1
     ate(c = 11)
   fimse
   escreval
   se(opcao = 2) entao
     c <- 10
     repita
          escreva( c, "...")
          c <- c - 1
     ate (c = 0)
   fimse
   escreval
ate(opcao = 3)
Fimalgoritmo