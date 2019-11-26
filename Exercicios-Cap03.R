# Lista de Exercícios - Capítulo 3

# Obs: Caso tenha problemas com a acentuação, consulte este link:
# https://support.rstudio.com/hc/en-us/articles/200532197-Character-Encoding

# Configurando o diretório de trabalho
# Coloque entre aspas o diretório de trabalho que você está usando no seu computador
# Não use diretórios com espaço no nome


# Exercício 1 - Pesquise pela função que permite listar todos 
#os arquivo no diretório de trabalho

setwd('~/Exerc?cios Data Science/R/')
list.files()


# Exercício 2 - Crie um dataframe a partir de 3 vetores: um de caracteres, 
#um lógico e um de números

nome <- c('Let?cia','Luciene','Davi','Arist?teles')
numeros <- c(16:19)
logico <- c(TRUE,FALSE,TRUE,TRUE)

tabela <- data.frame(name = nome, numeros = numeros, logico = logico)



str(tabela)

labels(tabela$name)


# Exercício 3 - Considere o vetor abaixo. 
# Crie um loop que verifique se há números maiores que 10 e imprima 
#o número e uma mensagem no console.


# Criando um Vetor
vec1 <- c(12, 3, 4, 19, 34)



print(vec1[1])

for(i in vec1) { 
  if(i > 10) {print(i)}
  
}


#ou 

for(i in 1:length(vec1)) {
  print(vec1[i])
}

# Exercício 4 - Conisdere a lista abaixo. Crie um loop que imprima no console 
#cada elemento da lista
lst2 <- list(2, 3, 5, 7, 11, 13)
lst2


for(i in lst2) {print(i)}




# Exercício 5 - Considere as duas matrizes abaixo. 
# Faça uma multiplicação element-wise e multiplicação normal entre as materizes

mat1 <- matrix(c(1:50), nrow = 5, ncol = 5, byrow = T)
mat1
mat2 <- t(mat1)
mat2

mat1*mat2

mat1 %*% mat2
# Multiplicação element-wise

# Multiplicação de matrizes

# Exercício 6 - Crie um vetor, matriz, lista e dataframe e faça a nomeação 
#de cada um dos objetos
vetor <- c(1:20)
matriz <- matrix(1:40,nrow = 4,ncol = 5)
u <- Sys.Date()
t <- c(1:5)
datas <- u-t

dataframe <- data.frame(numero = 1:5, dataontens = as.character(datas))
View(dataframe)

# Exercício 7 - Considere a matriz abaixo. Atribua valores NA de forma aletória 
#para 50 elementos da matriz
# Dica: use a função sample()
mat2 <- matrix(1:90, 10)
mat2

mat2[sample(1:90,50)] <- NA
print(mat2)

# Exercício 8 - Para a matriz abaixo, calcule a soma por linha e por coluna
mat1 <- matrix(c(1:50), nrow = 5, ncol = 5, byrow = T)
mat1

apply(mat1,1,sum)
apply(mat1,2,sum)

# Exercício 9 - Para o vetor abaixo, ordene os valores em ordem crescente
a <- c(100, 10, 10000, 1000)
a

sort(a)

# # Exercício 10 - Imprima no console todos os elementos da matriz 
#abaixo que forem maiores que 15
mat1 <- matrix(c(1:50), nrow = 5, ncol = 5, byrow = T)
mat1

for(i in mat1) {
  if(i>15){print(i)}
}
