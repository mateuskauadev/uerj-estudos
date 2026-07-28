Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 14/07/2026
Var
   N, p, c: inteiro
   R: caractere
Inicio
 repita
   escreval("Digite um numero:")
   leia(N)
   c <- N
   p <- 1
   repita
      se (c > 1) entao
         escreva( c, " x")
      senao
         escreva(c, "=")
      fimse
      p <- p * c
      c <- c - 1
   ate(c < 1)
   escreval(p)
   escreval("Quer continuar")
 ate (R = "N")

Fimalgoritmo