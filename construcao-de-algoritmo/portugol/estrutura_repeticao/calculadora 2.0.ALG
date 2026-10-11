Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 18/07/2026
Var
   n, x, y :inteiro
   c:real


Inicio
   escreval("-------------------Lista de comando-----------------")
   escreval("                   [1] adição ")
   escreval("                   [2] subtração")
   escreval("                   [3] multiplicação")
   escreval("                   [4] divisão ")
   escreval("                   [5] potenciação")
   escreval("---------------------------------------------------")
   escreval
   escreval("escolha a sua opção")
   leia(n)
   escreval("Digite os valores de x e y")
   leia(x)
   leia(y)
   escolha n
   caso 1
      c <- x + y
      escreval("A soma sera :", c)
   caso 2
      c <- x - y
      escreval("A subtração sera:", c)
   caso 3
      c <- x * y
      escreval("A multiplicação sera:", c)
   caso 4
      c <- x / y
      escreval("A divisao sera:", c)
   caso 5
      c <- x ¨ y
      escreval("a potenciação sera:", c)
    caso 5
      escreval("Codigo invalido! Digite um noovo comando.")
   fimescolha

Fimalgoritmo