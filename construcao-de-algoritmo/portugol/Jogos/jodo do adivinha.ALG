Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 11/07/2026
Var
   nome: caractere
   jogador, computador,t: real
   acertou: logico

Inicio
   escreval("-----------------------------------------------------------------")
   escreval("                          Joogo do adivinha                 ")
   escreval("-----------------------------------------------------------------")
   escreval("Digite seu nome:")
   leia(nome)
   escreval("seja bem vindo ", nome , "!")
   escreval
   escreval("lista de comandos")
   escreval("-----------------------------------------------------------------")
   escreval("clique no numero entre 1 a 10 que voce acha q ele vai esccolher")
   escreval("-----------------------------------------------------------------")
   escreval
   escreval("-----------------------------------------------------------------")
   escreval("jogada do computador")
   computador <- randi(10) + 1
   t <- 1
   acertou <- falso
   enquanto ((t <= 4) e (acertou = falso)) faca
      escreval("tentaivas", t ,"de 4. escolha a sua jogada:")
      leia(jogador)
      se (jogador = computador) entao
         acertou <- verdadeiro
      senao
         se(t < 4) entao
            escreval("Errou! jogue de novo:")
         fimse
      fimse
      t <- t + 1
   fimenquanto
   escreval("--------------------------------------------------")
   se(acertou = verdadeiro) entao
     escreval("Parabens", nome, ",voce ganhou!")
   senao
     escreval("Que pena! suas chances acabaram")
     escreval("O computador escolheu:", computador)
     escreval
     escreval("------------------Fim de jogo-------------------")
   fimse






Fimalgoritmo