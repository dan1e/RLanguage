#Trabalhando com FACTOR

#criando os vetores para testarmos as factors logo em seguida
nome <- c('Letícia','Luciene','Davi','Aristóteles')
numeros <- c(16:19)
logico <- c(TRUE,FALSE,TRUE,TRUE)

# PEGA FATORES A PARTIR DE UM VETOR
f_nome <-  factor(nome)
f_nome
f_numeros <-  factor(numeros)
f_numeros
f_logico <- factor(logico) 
f_logico

#FORMAS DE ORDENAR

#1 DESTA FORMA VOCÊ PODE ORDENAR DE FORMA ARBITRÁRIA USANDO LEVELS E LIGANDO ORDERED COMO TRUE
f_nome <- nome %>% factor(ordered = TRUE, levels = c('Lucience', 'Davi', 'Letícia','Aristóteles'))

f_nome

# Desta forma você ordena conforme a ordem dentro do vetor, o vetor nesta linha de comando se chama 'nome'
f_nome <-  nome %>%  factor( ordered =  TRUE, levels = nome)
