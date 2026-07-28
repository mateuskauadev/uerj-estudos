Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 11/07/2026
Var
   nome: caractere
   jogador, computador: real

Inicio
   escreval("---------------------------------------------------------")
   escreval("                     JokenPo                 ")
   escreval("---------------------------------------------------------")
   escreval("Digite seu nome:")
   leia(nome)
   escreval("seja bem vindo ", nome , "!")
   escreval
   escreval("lista de comandos")
   escreval("---------------------------------------------------------")
   escreval("               Aperte 1 para jogar pedra                 ")
   escreval("               Aperte 2 para jogar papel                 ")
   escreval("               Aperte 3 para jogar tesoura    ")
   escreval("---------------------------------------------------------")
   escreval("escolha a sua jogada")
   leia(jogador)
   escreval
   escreval("---------------------------------------------------------")
   escreval("jogada do computador")
   computador <- randi(3) + 1
   se( computador = 1 ) entao
      escreval("computador jogou pedra")
   senao
      se(computador = 2 ) entao
         escreval("computador jogou papel")
      senao
         escreval("computador jogou tesoura")
      fimse
   fimse
   escreval("---------------------------------------------------------")
   escreval
   se( computador = jogador ) entao
      escreval("empate")
   senao
      se(( jogador = 3) e (computador = 2) ou ( jogador = 1) e (computador = 3) ou (jogador = 2) e (computador = 1)) entao
         escreval("jogador ganhou")
      senao
         escreval("computador ganhou")
      fimse
   fimse






Fimalgoritmo