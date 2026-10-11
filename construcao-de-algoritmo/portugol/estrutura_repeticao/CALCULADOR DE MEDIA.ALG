Algoritmo "calculador de media"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 18/07/2026
Var
   n, s, cont: inteiro
   m: real
Inicio
   cont <- 0
   s <- 0
   escreval("Digite um valor inteiro e positivo(ou <= 0 para sair):")
   leia(n)
   enquanto ( n > 0) faca
      s <- s + n
      cont <- cont + 1
      escreval("Digite um outro valor(ou <= 0 para sair):")
      leia(n)
   fimenquanto
   se(cont > 0) entao
      m <- s / cont
      escreval("A media dos valores digitados sera:", m)
   senao
      escreval("Nao e possivel fazer a divisao.")
   fimse

Fimalgoritmo