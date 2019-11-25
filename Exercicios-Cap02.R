# Lista de Exercícios - Capítulo 2
library(magrittr)

# Obs: Caso tenha problemas com a acentuação, consulte este link:
# https://support.rstudio.com/hc/en-us/articles/200532197-Character-Encoding

# Configurando o diretório de trabalho
# Coloque entre aspas o diretório de trabalho que você está usando no seu computador
# Não use diretórios com espaço no nome
setwd("C:/FCD/BigDataRAzure/Cap02")
getwd()

# Exercício 1 - Crie um vetor com 30 números 
getwd
setwd()
# Exercício 2 - Crie uma matriz com 4 linhas e 4 colunas preenchida com números inteiro

VETOR <- c(1:16)
NOVA <- VETOR %>%  matrix(nrow = 4,ncol =4)
NOVA
# Exercício 3 - Crie uma lista unindo o vetor e matriz criados anteriormente
list(VETOR,NOVA)

# Exercício 4 - Usando a função read.table() leia o arquivo do link abaixo para uma dataframe
# http://data.princeton.edu/wws509/datasets/effort.dat

daniel <- read.table('http://data.princeton.edu/wws509/datasets/effort.dat')

daniel
str(daniel)
# Exercício 5 - Transforme o dataframe anterior, em um dataframe nomeado com os seguintes labels:
# c("config", "esfc", "chang")


names(daniel) <- list('config','esfc','chang')
daniel

ou 

names(daniel) <- c('config','esfc','chang')
daniel 
# Exercício 6 - Imprima na tela o dataframe iris, verifique quantas dimensões existem no dataframe iris e imprima um resumo do dataset
print(iris)
dim(iris)
str(iris)

# Exercício 7 - Crie um plot simples usando as duas primeiras colunas do dataframe iris

library(tidyverse)

iris %>% ggplot()+
  geom_point(aes(x = iris$Sepal.Length,y= iris$Sepal.Width))

  
# Exercício 8 - Usando a função subset, crie um novo dataframe com o conjunto de dados do dataframe iris em que Sepal.Length > 7
# Dica: consulte o help para aprender como usar a função subset()

?subset

especies <- iris %>% subset(Sepal.Length >7)

# Exercícios 9 (Desafio) - Crie um dataframe que seja cópia do dataframe iris e usando a função slice(), divida o dataframe em um subset de 15 linhas

?slice

minimini <- iris %>% slice(1:15)
minimini
# Dica 1: Você vai ter que instalar e carregar o pacote dplyr
install.packages("dplyr")
library(dplyr)

# Dica 2: Consulte o help para aprender como usar a função slice()
?slice
# Exercícios 10 - Use a função filter no seu novo dataframe criado no item anterior e retorne apenas valores em que Sepal.Length > 6


iris %>% filter(Sepal.Length > 6)
# possui 61 linhas com Sepal.Lenght maior que 6

minimini %>% filter(Sepal.Length > 6)
# possui nenhuma linha com Sepal.Lenght maior que 6

# Dica: Use o RSiteSearch para aprender como usar a função filter



