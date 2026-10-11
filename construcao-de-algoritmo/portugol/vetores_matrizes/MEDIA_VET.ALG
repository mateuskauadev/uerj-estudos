Algoritmo "Media de notas com vetores"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 20/07/2026
Var
  nome: vetor[1..4] de caractere
  n1: vetor[1..4] de real
  n2: vetor[1..100] de real
  m: vetor[1..100] de real
  i, q: inteiro
Inicio
  // Entrada de dados
  escreval("-------------------------------------")
  escreval("    Quantidade de alunos")
  escreval("-------------------------------------")
  escreval("Digite a quantidade de alunos na turma: ")
  leia(q)
  limpatela
  
  para i <- 1 ate q faca
    escreval("------------------------------------")
    escreval("       cadastro de aluno", i)
    escreval("------------------------------------")
    escreval("Digite seu nome: ")
    leia(nome[i])
    escreval("Digite a nota da sua primeira prova:")
    leia(n1[i])
    escreval("Digite a nota da sua segunda prova:")
    leia(n2[i])

    // Calculo guardando no vetor
    m[i] <- (n1[i] + n2[i]) / 2
    limpatela
  fimpara

  // relatorio final
  
  escreval("=======================================")
  escreval("         Boletim final")
  escreval("=======================================")
  
  para i <- 1 ate q faca
    se (m[i] >= 7) entao
       escreval("Aluno: ", nome[i]:15, " - Media:", m[i], "[ APROVADO ]")
    senao
       escreval("Aluno: ", nome[i]:15, " - Media:", m[i], "[ APROVADO ]")
    fimse
  fimpara
  escreval("-------------------------------------")
    

Fimalgoritmo