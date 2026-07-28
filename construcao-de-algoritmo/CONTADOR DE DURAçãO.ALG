Algoritmo "contador de duração"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 18/07/2026
Var
   sexo: caractere
   h, P : real

Inicio
   escreval("Digite se voce e homem ou mulher")
   leia(sexo)
   escreval("Digite a sua altura:")
   leia(h)
   se(sexo = "homem")entao
     P <- (72.7 * h) - 58
   fimse
   se(sexo = "mulher") entao
    P <- (62.1 * h) - 44.7
   fimse
   escreval("O peso ideal sera ", p, " kg")

Fimalgoritmo