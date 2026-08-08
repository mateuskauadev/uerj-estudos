Algoritmo "exercicio18-vet.alg"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Data atual  : 06/08/2026

// Exercicio:
// Faça um algoritmo que leia o nome, o sexo e o salário de 5 funcionários e
// guarde esses dados em três vetores. No final, mostre uma listagem contendo
// apenas os dados das funcionárias mulheres que ganham mais de R$5 mil.
Var
  vet_salario: vetor[0..4] de real
  vet_nome: vetor[0..4] de caractere
  vet_sexo: vetor[0..4] de caractere
  i: inteiro


Inicio
  escreval("----------------- Banco de dados ----------------")
  para i de 0 ate 4 faca
    Escreval("Digite o nome: ")
    leia(vet_nome[i])
    escreval("Digite o sexo ([M/H]): ")
    leia(vet_sexo[i])
    escreval("Digite o salário: ")
    leia(vet_salario[i])
  fimpara
  limpatela
  
  escreval("---------------- Listagem ---------------------")
  para i de 0 ate 4 faca
    se ((vet_sexo[i] = "M") ou (vet_sexo[i] = "m")) entao
      escreval("Nome:", vet_nome[i], "- Salário:", vet_salario[i])
    fimse
  fimpara
    

  
  
   




Fimalgoritmo