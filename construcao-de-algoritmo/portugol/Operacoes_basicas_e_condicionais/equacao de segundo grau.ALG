Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 09/07/2026
Var
   nome: caractere
   a, b, c, d, x1, x2: real

Inicio
   Escreval("Digite seu nome:")
   Leia(nome)
   Escreval("ola, seja bem vindo ", nome, ".")
   Escreval("--------------------------------------")
   Escreval("        calculadora de raizes         ")
   Escreval("--------------------------------------")
   Escreval
   Escreval("Para usar a calculadora, precisaremos de alguns dados.")
   Escreval("A seguir digite os coeficientes.")
   Escreval
   Escreval("Digite a:")
   Leia(a)
   Escreval
   Escreval("Digite b:")
   Leia(b)
   Escreval
   Escreval("digite c:")
   Leia (C)
   Escreval
   Escreval("--------------------------------------")
   Escreval("          Estudo do delta")
   Escreval("--------------------------------------")
   Escreval
   d <- (b * b)-(4 * a * c)
   Escreval("O delta da equacao sera:", d)
   Se(d > 0) entao
      Escreval("A equação possui duas raizes reais e diferentes")
   senao
      Se(d = 0) entao
         Escreval("A equação possui duas raizes rais e iguais")
      senao
         Escreval("A equção nao possui raizes reais
      FimSe
   Fimse
   Escreval
   Escreval("-------------------------------------")
   Escreval("       Soluções da equação")
   Escreval("-------------------------------------")
   Escreval

   x1 <- ((-b) + RaizQ(d))/ (2*a)
   x2 <- ((-b) - RaizQ(d))/ (2*a)
   Escreval("As raizes da equação de segundo grau serão ", x1, " e", x2)


Fimalgoritmo