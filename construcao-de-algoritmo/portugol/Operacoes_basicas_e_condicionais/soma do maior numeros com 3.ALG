Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 16/07/2026
Var
   a, b, c, x1, x2, d: real


Inicio
  escreval("Digite os coeficientes:")
  leia(a)
  leia(b)
  leia(c)
  d <- (b * b) - (4 * c * a)
  x1 <- ((-b) + raizQ(d)) / 2 * a
  x2 <- ((-b) - raizQ(d)) / 2 * a
  escreval("x1 e x2 sera", x1, x2)



Fimalgoritmo