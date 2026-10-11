Algoritmo "mateus"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 13/04/2026
Var
 L1, L2, L3: real
 EQ, ES, EI, TRI: logico
 Nome: caractere
Inicio
  escreval( "Digite seu Nome : ")
  leia(Nome)
  Escreval("Ola, Boa tarde ", Nome, "! ")
  escreva("Digite o primeiro lado: ")
  leia(L1)
  escreva("Digite o segundo lado: ")
  leia(L2)
  escreva("Digite o terceiro lado: ")
  leia(L3)
  TRI <- (L1 < L2 + L3) e (L2 < L1 + L3) e (L3 < L1 + L2)
  EQ <- (L1 = L2) e (L2 = L3)
  ES <- (L1 <> L2) e (L1 <> L3) e (L2 <>L3)
  EI <- ((L1 = l2) e (L1 <> L3)) ou ((L1 = L3) e (L1 <> L2)) OU ((L2 = L3) e (L2 <> L1))
  escreval ( "Pode se forma um triangulo? ", TRI)
  escreval ("O triangulo e Equilatero? ", EQ)
  escreval ("O triangulo e escaleno? ", ES)
  escreval( "O triangulo e isosceles?", EI)
Fimalgoritmo