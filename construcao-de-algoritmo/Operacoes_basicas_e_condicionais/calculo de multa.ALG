Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 11/07/2026
Var
   nome: caractere
   n1, n2, n3: real

Inicio
   escreval("---------------------------------------------------------")
   escreval("                     analisador                 ")
   escreval("---------------------------------------------------------")
   escreval("Digite seu nome:")
   leia(nome)
   escreval("seja bem vindo ", nome)
   escreval( "Esse e o sistema de analise geral.")
   escreval("Iremos analisar se e possivoel formar um triangulo")
   escreval("Digite a medida do primeiro lado")
   leia(n1)
   escreval("Digte o segundo lado:")
   leia(n2)
   escreval("Digite o terceiro lado:")
   leia(n3)
   se((n1 < n3 + n3) e (n2 < n1 + n3) e (n3 < n1 + n2)) entao
      escreval("Esse triangulo existe.")
      se( (n1 = n2) e (n2 = n3)) entao
        escreval("esse triangulo e equilatero")
      senao
        se (( n1 = n2) ou (n1 = n3) ou (n2 = n3)) entao
           escreval("esse triangulo e isosceles.")
        senao
           escreval("esse triangulo e escaleno")
        fimse
      fimse
   senao
      escreval("esse triangulo nao existe.")
   fimse

   


Fimalgoritmo