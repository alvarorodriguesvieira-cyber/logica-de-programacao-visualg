algoritmo "CalculadoraIMC_ComPesoIdeal"
var
   Alt, Peso, Imc, pesoIdealMin, pesoIdealMax: real

inicio
   Escreva("Digite a altura dela (ex: 1.65): ")
   Leia(Alt)
   Escreva("Digite o peso atual dela (kg): ")
   Leia(Peso)
   
   // Cálculos
   Imc <- Peso / (Alt ^ 2)
   
   // Cálculo dos limites do peso ideal (IMC 18.5 até 24.9)
   pesoIdealMin <- 18.5 * (Alt ^ 2)
   pesoIdealMax <- 24.9 * (Alt ^ 2)
   
   Escreval("")
   Escreval("--- RESULTADOS ---")
   Escreval("O IMC atual é: ", Imc:5:2)
   Escreval("Faixa de peso ideal para esta altura: entre ", pesoIdealMin:5:1, " kg e ", pesoIdealMax:5:1, " kg")
   Escreval("")

   // A estrutura de decisão do IMC
   Se (Imc < 18.5) entao
      Escreva("Classificação: Abaixo do peso ideal")
   Senao
      Se (Imc <= 25) entao
         Escreva("Classificação: Parabéns! Peso ideal")
      Senao
         Se (Imc <= 30) entao
            Escreva("Classificação: Cuidado! Sobrepeso")
         Senao
            Se (Imc <= 40) entao
               Escreva("Classificação: Obesidade")
            Senao
               Escreva("Classificação: Obesidade Mórbida")
            FimSe
         FimSe
      FimSe
   FimSe
   Escreval("")

fimalgoritmo
