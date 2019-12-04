# Solução Lista de Exercícios - Capítulo 6

# Obs: Caso tenha problemas com a acentuação, consulte este link:
# https://support.rstudio.com/hc/en-us/articles/200532197-Character-Encoding

# Configurando o diretório de trabalho
# Coloque entre aspas o diretório de trabalho que você está usando no seu computador
# Não use diretórios com espaço no nome

setwd('c:/Users/joselacerda/Documents/R/')



# Exercicio 1 - Instale a carregue os pacotes necessários para trabalhar com SQLite e R
install.packages('RSQLite')
library(RSQLite)

# Exercicio 2 - Crie a conexão para o arquivo mamiferos.sqlite em anexo a este script
db <- dbConnect(SQLite(), "mamiferos.sqlite")


dbListTables(db)


# Exercicio 3 - Qual a versão do SQLite usada no banco de dados?
# Dica: Consulte o help da função src_dbi()
library(tidyverse)

src_sqlite("mamiferos.sqlite",create = F)


# Exercicio 4 - Execute a query abaixo no banco de dados e grave em um objero em R:
# SELECT year, species_id, plot_id FROM surveys

qry <- 'SELECT year, species_id, plot_id FROM surveys;'

V1 <- dbGetQuery(db,qry)

View(V1)

# Exercicio 5 - Qual o tipo de objeto criado no item anterior?

class(V1)


# Exercicio 6 - Selecione as colunas species_id, sex e weight  da tabela 'surveys' com a seguinte condição:
# Condição: weight < 5


#COM PACOTE dplyr

mamiferos <-  dbConnect(SQLite(),'mamiferos.sqlite')
dbListTables(mamiferos)


pesquisas <- tbl(mamiferos,"surveys") %>%  
  select(species_id, sex, weight) %>% 
  filter(weight < 5) %>% 
  collect()

head(pesquisas)

class(pesquisas)


#APENAS COM PACOTE DBI

#db é a mesma linha de comando de conexão do exercício 1

dbListTables(db)
dbListFields(db, "surveys")

qry1 <- "Select species_id, sex, weight from surveys where weight < 5;"

dbGetQuery(db,qry1)


# Exercicio 7 - Grave o resultado do item anterior em um objeto R. O objeto final deve ser um dataframe
V2 <- dbGetQuery(db,qry1)
View(V2)

# Exercicio 8 - Liste as tabelas do banco de dados carregado

dbListTables(db)


# Exercicio 9 - A partir do dataframe criado no item 7, crie uma tabela no banco de dados


dbReadTable(mamiferos, "surveys")

dbWriteTable(mamiferos,'pesquisa1',pesquisas)

dbListTables(mamiferos)

# Exercicio 10 - Imprima os dados da tabela criada no item anterior

View(dbReadTable(mamiferos,'pesquisa1'))


