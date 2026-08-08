Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 16/04/2026
Var
 nome: caractere
 T1, T2, p1, P2, M1, M2, MF: real


Inicio
 escreval("------------------------------")
 escreval("  Escola Futuro Bilionarios   ")
 escreval("------------------------------")
 escreval("digite seu nome: ")
  leia(nome)
 escreval("ola, tudo bem "+ nome  + "!")
 escreva("")
 escreval("Iremos calcular a sua media e dizer o seu rendimento.")
 escreval("Digite a nota do seu primeiro teste: ")
  leia(T1)
 escreval("Digite a nota da sua primeira prova: ")
  leia(P1)
  M1 <- (T1 + P1) / 2
 escrevaL("Media do primeiro bimestre: ", M1)
 escreval("Digite a nota da seu segundo teste: ")
  leia(T2)
 escreval("Digite a nota da sua segunda prova: ")
  leia(P2)
  M2 <- (T2 + P2) / 2
 escreval("Media do segundo bimestre: ", M2)
  MF <- (M1 + M2) / 2
 escreval("Media Final: ", MF)
  se( MF < 6 ) entao
   escreva("Nota Vermelha")
  senao
     se ( MF = 6) entao
      escreva("Nota Minima")
     senao
       se ( MF > 6) entao
        escreva ("Nota Azul")
       senao
       Fimse
     Fimse
  Fimse
   
  

Fimalgoritmo