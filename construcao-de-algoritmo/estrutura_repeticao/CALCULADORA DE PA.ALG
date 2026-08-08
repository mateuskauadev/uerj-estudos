Algoritmo "calculadora de pa"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 11/07/2026
Var
   contador, idade, numero_18, numero_5, soma_idades, maior_idade: inteiro
   m: real
Inicio
   contador <- 1
   soma_idades <- 0
   numero_18 <- 0
   numero_5 <- 0
   escreval("idades sorteadas")
   enquanto ( contador <= 10) faca
    idade <- randi(91)
      escreval(" Pessoa:" , contador, idade, "anos")
         soma_idades <- soma_idades + idade
      se(idade < 5) entao
         numero_5 <- numero_5 + 1
      fimse
      se(idade > 18) entao
         numero_18 <- numero_18 + 1
      fimse
      se( idade > maior_idade) entao
         maior_idade <- idade
      fimse
      contador <- contador + 1
   fimenquanto
    m <- soma_idades / 10
   EscrevaL("pessoas com idade abaixo de 5:", numero_5)
   escreval("pessoas com idade mais que 18:", numero_18)
   escreval("media de idades:", m)
   escreval("Maior idade:", maior_idade)



Fimalgoritmo