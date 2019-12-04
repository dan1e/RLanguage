
library(readr)

setwd('c:/Users/joselacerda/Documents/Exercícios Data Science/cap5/')


pedidos <-  read_csv('~/Exercícios Data Science/cap5/arquivos/pedidos.csv')
pedidos2 <-  read.csv('~/Exercícios Data Science/cap5/arquivos/pedidos.csv', header = T)
pedidos3 <-  read.table('~/Exercícios Data Science/cap5/arquivos/pedidos.csv',header = T,sep =",")

View(pedidos)
View(pedidos2)
View(pedidos3)

#editando o read table agora para jogar NA para qualquer valor que eu escolher
pedidos3 <-  read.table('~/Exercícios Data Science/cap5/arquivos/pedidos.csv',header = T,sep =",",
                        na.strings = c('Rivelino','Maradona'))
View(pedidos3)
# agora você pode observar que o nome Rivelino e Maradona não existe mais na coluna Nome

#Agora mais edições sobre a importação, desta vez a negação das factores

pedidos3 <-  read.table('~/Exercícios Data Science/cap5/arquivos/pedidos.csv',header = T,sep =",",
                        na.strings = c('Rivelino','Maradona', stringAsFactors = F))
View(pedidos3)


dir()
search()


read_csv(file.choose())

library(readxl)

#importar arquivo Excel

#para ver a quantidade e o nome das planilhas do workbook

excel_sheets('UrbanPop.xlsx')

#Carregar o arquivo Excel
read_excel('UrbanPop.xlsx')

read_excel('UrbanPop.xlsx',sheet = 2)
#OU o nome da planilha
mm <- read_excel('UrbanPop.xlsx',sheet = 'Period2') 


#####
arquivo <- XLConnect::loadWorkbook('UrbanPop.xlsx')

df1 <- readWorksheet(arq1,sheet=1, header = T)

View(df1)
