Algoritmo "exercicio13-vet"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Data atual  : 06/08/2026

// Exercicio:
// Crie um programa que leia o nome e a idade de 9 pessoas e guarde esses
// valores em dois vetores, em posições relacionadas. No final, mostre uma listagem
// contendo apenas os dados das pessoas menores de idade.
Var
  vet_idade: vetor[0..8] de inteiro
  vet_nome: vetor[0..8] de caractere
  i: inteiro


Inicio
  escreval("--------------------------------------")
  escreval("         Banco de Dados")
  escreval("--------------------------------------")
  
  para i de 0 ate 8 faca
    escreval("Digite o nome e idade:")
    leia(vet_nome[i])
    leia(vet_idade[i])
  fimpara
  limpatela
  
  escreval("============ Listagem ==============")
  para i de 0 ate 8 faca
    se (vet_idade[i] < 18) entao
      escreval("Nome:", vet_nome[i], "- Idade:", vet_idade[i])
    fimse
  fimpara
    

  
  
   




Fimalgoritmo