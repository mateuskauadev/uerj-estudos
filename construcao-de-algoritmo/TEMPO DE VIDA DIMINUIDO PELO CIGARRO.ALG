Algoritmo "tempo de vida diminuido pelo cigarro"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 10/07/2026
Var
   nome:caractere
   Q_CD, anos, D_F, Q_CT, M_P, D_P: real


Inicio
   escreval("Digite o seu nome:")
   leia(nome)
   escreval("quantos cigarros vc fuma por dia:")
   leia(Q_CD)
   escreval("a quantos anos vc fuma:")
   leia(anos)
   D_F <- 365 * anos
   Q_CT <- D_F * Q_CD
   M_P <- Q_CT * 10
   D_P <- M_P  / 1440

   escreval("quantidade de dias a menos de vida sera:", D_P)


Fimalgoritmo