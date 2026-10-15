algoritmo "calculadora_concreto"
var
   comprimento, largura, espessura_cm, espessura_m, volume: real
   sacos_cimento, m3_areia, m3_brita, litros_agua: real

inicio
   Escreval("========================================")
   Escreval("     CALCULADORA DE CONCRETO (M3)       ")
   Escreval("========================================")
   Escreval("")

   Escreva("Digite o comprimento (em metros): ")
   Leia(comprimento)
   
   Escreva("Digite a largura (em metros): ")
   Leia(largura)
   
   Escreva("Digite a espessura/altura (em centímetros): ")
   Leia(espessura_cm)

   // Conversão da espessura de centímetros para metros
   espessura_m <- espessura_cm / 100

   // Cálculo do volume geométrico em metros cúbicos (m³)
   volume <- comprimento * largura * espessura_m

   // Consideramos um fator de segurança de 10% (perda/acomodação no fundo da vala ou forma)
   volume <- volume * 1.10

   // Parâmetros médios para 1 m³ de concreto dosado em obra (Traço comum 1:2:3)
   // - Cimento: ~7.5 sacos de 50kg por m³
   // - Areia média: ~0.55 m³ por m³
   // - Brita: ~0.75 m³ por m³
   // - Água: ~175 a 200 litros por m³
   
   sacos_cimento <- volume * 7.5
   m3_areia <- volume * 0.55
   m3_brita <- volume * 0.75
   litros_agua <- volume * 180

   Escreval("")
   Escreval("----------------------------------------")
   Escreval("           RESULTADO DO CÁLCULO         ")
   Escreval("----------------------------------------")
   Escreval("Área calculada: ", (comprimento * largura):5:2, " m²")
   Escreval("Volume total (+ 10% de margem): ", volume:5:3, " m³")
   Escreval("")
   Escreval("Materiais necessários:")
   Escreval(" - Cimento (sacos 50kg): ", sacos_cimento:5:1, " sacos")
   Escreval(" - Areia média:         ", m3_areia:5:3, " m³")
   Escreval(" - Brita (0 ou 1):      ", m3_brita:5:3, " m³")
   Escreval(" - Água estimada:       ", litros_agua:5:0, " litros")
   Escreval("========================================")

fimalgoritmo
