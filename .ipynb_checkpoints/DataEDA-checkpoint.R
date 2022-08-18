library(dplyr)
library(RVAideMemoire)
library(BSDA)

setwd("~/GITHUB/PRIVATE/ESTATISTICA/AdvancedTopics_Projects")
enem = read.csv('df_enem.csv', sep = ';')
enem_recife = enem %>% filter(NO_MUNICIPIO_PROVA == 'Recife')
str(enem_recife)

# OBJETIVO:
# Analisar a diferenca entre as medias de homens e mulheres em um colegio

# Normalidade
byf.shapiro(NOTA_CN ~ SEXO, enem_recife)
byf.shapiro(NOTA_CH ~ TP_SEXO, colegioy)
byf.shapiro(NOTA_LC ~ TP_SEXO, colegioy)
byf.shapiro(NOTA_MT ~ TP_SEXO, colegioy)
byf.shapiro(NOTA_REDACAO ~ TP_SEXO, colegioy)

# a nota de redacao nao passou no teste de normalidade

colegioy_mulher = colegioy %>% filter(TP_SEXO=='F')
colegioy_homem = colegioy %>% filter(TP_SEXO=='M')

# Teste Z para amostras independentes
# Ho: nao ha difenrenca entre as notas
# Ha: ha diferenca entre as notas

# Comparacao entre homens e mulheres das medias das notas do colegio Y.

# Teste Z - CIENCIAS NATURAIS
sd(colegioy_mulher$NOTA_CN)
sd(colegioy_homem$NOTA_CN)

z.test(colegioy_mulher$NOTA_CN, sigma.x =59.09334,
       colegioy_homem$NOTA_CN, sigma.y = 57.74716, alternative = 't')

# Teste Z - CIENCIAS HUMANAS
sd(colegioy_mulher$NOTA_CH)
sd(colegioy_homem$NOTA_CH)

z.test(colegioy_mulher$NOTA_CH, sigma.x = 47.21453,
       colegioy_homem$NOTA_CH, sigma.y = 52.88721, alternative = 't')

# escrever a conclusao e depois plotar os graficos boxplots para uma melhor
# interpretacao grafica sobre o que estamos analisando.

par(mfrow=c(2,2))
boxplot(colegioy_mulher$NOTA_CN)
boxplot(colegioy_homem$NOTA_CN)
boxplot(colegioy_mulher$NOTA_CH)
boxplot(colegioy_homem$NOTA_CH)
