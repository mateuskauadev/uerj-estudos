Algoritmo "caça ao tesouro"
// Disciplina   : [Linguagem e Lógica de Programação]
// Dupla: mateus kauã e Cristian Aguiar
// Descrição:
// O jogo de Caça ao Tesouro consiste em explorar uma ilha em busca de um tesouro
// escondido. A ilha é representada por um tabuleiro 10 x 10, no qual existem
// obstáculos, armadilhas, bônus e um tesouro. O objetivo é encontrar o tesouro
// antes que a energia do jogador chegue a zero.
const
   tam = 10
Var
   mapa: vetor[1..tam,1..tam] de caractere
   andado: vetor[1..tam, 1..tam] de caractere
   l,c,i, l_inicial, c_inicial, l_nova, c_nova: inteiro
   energ, moedas, mov, arm, bonus: inteiro
   comando: caractere
   ganhou: logico

Inicio
   // configuração inicial do jogador
   l_inicial <- 1
   c_inicial <- 1
   energ <- 100
   moedas <- 0

   // Estatisticas do jogo
   mov <- 0
   arm <- 0
   bonus <- 0
   ganhou <- falso

   // preenchimento do mapa
   para l de 1 ate tam faca
      para c de 1 ate tam faca
         mapa[l,c] <- "."
      fimpara
   fimpara

   // Distribuuição dos itens
   // tesouro T - 1 unidade

   repita
      l <- randi(10) + 1
      c <- randi(10) + 1
   ate (mapa[l,c] = ".") e nao ((l = 1) e (c = 1))
   mapa[l,c] <- "T"

   //Obstaculo X - 10 unidades
   para i de 1 ate 10 faca
      repita
         l <- randi(10) + 1
         c <- randi(10) + 1
      ate (mapa[l,c] = ".") e nao ((l = 1) e (c = 1))
      mapa[l,c] <- "X"
   fimpara

   // Armadilha A - 5 unidades
   para i de 1 ate 5 faca
      repita
         l <- randi(10) + 1
         c <- randi(10) + 1
      ate (mapa[l,c] = ".") e nao ((l = 1) e (c = 1))
      mapa[l,c] <- "A"
   fimpara

   // Bonus B - 4 unidades
   para i de 1 ate 4 faca
      repita
         l <- randi(10) + 1
         c <- randi(10) + 1
      ate (mapa[l,c] = ".") e nao ((l = 1) e ( c = 1))
      mapa[l,c] <- "B"
   fimpara

   // Modeada M - 6 unidades
   para i de 1 ate 6 faca
      repita
         l <- randi(10) + 1
         c <- randi(10) + 1
      ate (mapa[l,c] = ".") e nao ((l = 1) e (c = 1))
      mapa[l,c] <- "M"
   fimpara



   // Parte visual do mapa
   enquanto (energ >0) e (nao ganhou) faca
      limpatela
      escreval("----------------------------------")
      escreval("       caça ao tesouro")
      escreval("---------------------------------")
      // * representa o jogador
      para l de 1 ate tam faca
         para c de 1 ate tam faca
            se ((l = l_inicial) e (c = c_inicial)) entao
               escreva("*")
            senao
               escreva(" ", mapa[l,c], " ")
            fimse
         fimpara
         escreval
      fimpara

      escreval
      escreval("-------- estatística--------")
      escreval("energia:", energ, " - Moedas:", moedas, " - Movimentos:", mov)
      escreval("----------------------------")

      // Movimentação
      escreva("Mova-se (W: Cima, S: Baixo, A: Esquerda, D: Direita): ")
      leia(comando)

      l_nova <- l_inicial
      c_nova <- c_inicial

      se (comando = "W") ou (comando = "w") entao
         l_nova <- l_inicial - 1
      fimse
      se (comando = "S") ou (comando = "s") entao
         l_nova <- l_inicial + 1
      fimse
      se (comando = "A") ou (comando = "a") entao
         c_nova <- c_inicial - 1
      fimse
      se (comando = "D") ou (comando = "d") entao
         c_nova <- c_inicial + 1
      fimse

      // Validação: não permitir sair do tabuleiro
      se (l_nova >= 1) e (l_nova <= 10) e (c_nova >= 1) e (c_nova <= 10) entao
         // Validação: não atravessar obstáculos
         se (mapa[l_nova, c_nova] <> "X") entao
            l_inicial <- l_nova
            c_inicial <- c_nova
            mov <- mov + 1
            energ <- energ - 1 // Consumo de 1 energia por movimento

            // Interação com os símbolos do mapa
            se (mapa[l_inicial, c_inicial] = "A") entao
               energ <- energ - 15
               arm <- arm + 1
               mapa[l_inicial, c_inicial] <- "."
            fimse

            se (mapa[l_inicial, c_inicial] = "B") entao
               energ <- energ + 20
               bonus <- bonus + 1
               mapa[l_inicial, c_inicial] <- "."
            fimse

            se (mapa[l_inicial, c_inicial] = "M") entao
               moedas <- moedas + 10
               mapa[l_inicial, c_inicial] <- "."
            fimse

            se (mapa[l_inicial, c_inicial] = "T") entao
               ganhou <- verdadeiro
            fimse
         fimse
      fimse
   fimenquanto

   // 5. Exibição da Tela Final e Estatísticas
   limpatela
   escreval("==========================================")
   se (ganhou) entao
      escreval("     PARABÉNS! VOCÊ ACHOU O TESOURO!      ")
   senao
      escreval("   GAME OVER! SUA ENERGIA CHEGOU A ZERO.  ")
   fimse
   escreval("==========================================")
   escreval("")
   escreval("=== ESTATÍSTICAS DA PARTIDA ===")
   escreval("1. Movimentos realizados: ", mov)
   escreval("2. Energia restante: ", energ)
   escreval("3. Moedas coletadas: ", moedas)
   escreval("4. Armadilhas encontradas: ", arm)
   escreval("5. Bônus coletados: ", bonus)






Fimalgoritmo