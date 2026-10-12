algoritmo "AprovacaoEmprestimo"
var
   renda, valorEmprestimo, valorPrestacao, limitePrestacao: real
   numParcelas: inteiro

inicio
   Escreval("--- SISTEMA DE AVALIAÇÃO DE EMPRÉSTIMO ---")
   Escreval("")
   
   Escreva("Digite a sua renda mensal (R$): ")
   Leia(renda)
   
   Escreva("Digite o valor do empréstimo solicitado (R$): ")
   Leia(valorEmprestimo)
   
   Escreva("Digite a quantidade de parcelas (meses): ")
   Leia(numParcelas)
   
   // Cálculos
   // Exemplo com taxa de juros simples de 10% sobre o valor total do empréstimo
   valorPrestacao <- (valorEmprestimo * 1.10) / numParcelas
   limitePrestacao <- renda * 0.30
   
   Escreval("")
   Escreval("--- ANÁLISE DE CRÉDITO ---")
   Escreval("Valor estimado da parcela: R$ ", valorPrestacao:5:2)
   Escreval("Limite máximo permitido da parcela (30% da renda): R$ ", limitePrestacao:5:2)
   Escreval("")

   // Validação da aprovação
   Se (valorPrestacao <= limitePrestacao) entao
      Escreval("Resultado: EMPRÉSTIMO APROVADO! Parabéns.")
   Senao
      Escreval("Resultado: EMPRÉSTIMO NEGADO. A parcela ultrapassa 30% da sua renda.")
   FimSe

fimalgoritmo
