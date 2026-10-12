algoritmo "imc_meta_peso.alg"
var
Peso, Alt, Imc, PesoidealMin, PesoidealMax, difPeso: real
inicio
Escreval("---CALCULADORA DE IMC COM META DE PESO---")
Escreva("")
Escreva("Digite sua altura em metros (ex: 1.75): ")
Leia(Alt)
Escreva("Digite seu peso atual em kg (ex: 85.0): ")
Leia(Peso)
Imc <- peso / (Alt ^ 2)
PesoidealMin <- 18.5 * (Alt ^ 2)
PesoidealMax <- 24.9 * (Alt ^ 2)
Escreval("")
Escreval("---RESULTADOS---")
Escreval("O seu IMC ATUAL É: ", Imc:5:2)
Escreval("A sua faixa de peso ideal é: entre ", PesoidealMin:5:2, " kg e ", PesoidealMax:5:2)
Escreval("")
Se (Imc < 18.5) entao
   difPeso <- PesoidealMin - peso
   Escreval("Classificação: Abaixo do peso ideal")
   Escreval ("Meta: Precisa ganhar ", difPeso:5:1, " kg para atingir o peso ideal ")
Senao
   Se (Imc <= 24.9) entao
      Escreval("Classificação: Parabéns! você já está no seu peso ideal. ")
   Senao
      difPeso <- Peso - PesoidealMax
      Escreval("Classificação: Acima do peso ideal. ")
      Escreval("Meta: Precisa Perder " , difPeso:5:1, " kg para atingir o limite de peso ideal ")
         FimSe
FimSe

fimalgoritmo
