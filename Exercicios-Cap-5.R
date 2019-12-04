# Solução Lista de Exercícios - Capítulo 5

library(tidyverse)

library(magrittr)


# Obs: Caso tenha problemas com a acentuação, consulte este link:
# https://support.rstudio.com/hc/en-us/articles/200532197-Character-Encoding

# Configurando o diretório de trabalho
# Coloque entre aspas o diretório de trabalho que você está usando no seu computador
# Não use diretórios com espaço no nome
setwd("C:/Users/joselacerda/Documents/Exercícios Data Science/R/")
getwd()


# Exercicio 1 - Encontre e faça a correção do erro na instrução abaixo:
write.table(mtcars, file = "mtcars2.txt", sep = "|", col.names = N, qmethod = "double")


# O erro está em col.names onde este atributo só aceita valor lógico para definir se os nomes
# dos objetos serão salvos.


# Exercicio 2 - Encontre e faça a correção do erro na instrução abaixo:
library(readr)
setwd('c:/Users/joselacerda/Documents/Exercícios Data Science/cap5/')

df_iris <- read_csv("iris.csv", col_types = matrix(
  Sepal.lenght = col_double(1),
  Sepal.width = col_double(1),
  Petal.lenght = col_double(1),
  Petal.Width = col_double(1),
  Species  = col_factor(c('setosa','versicolor','virginica'))
))



#O erro está na atribuição erra de col_double() contendo o número 1 e também a moodificação 
#do tipoo de dado das colunas estão sendo feitas por matrix, esta forma não é aceita peo atributo
#col_types que recebe corrigido logo abaixo list.




df_iris <- read_csv("iris.csv", col_types = list(
  Sepal.lenght = col_double(),
  Sepal.width = col_double(),
  Petal.lenght = col_double(),
  Petal.Width = col_double(),
  Species  = col_factor(c('setosa','versicolor','virginica'))
                          ))



#Exercício 3 - Abaixo você encontra dois histogramas criados separadamente.
# Mas isso dificulta a comparação das distribuições. Crie um novo plot que faça a união 
# de ambos histogramas em apenas uma área de plotagem.



# Dados aleatórios
dataset1=rnorm(4000 , 100 , 30)     
dataset2=rnorm(4000 , 200 , 30) 

# Histogramas
par(mfrow=c(1,2))
hist(dataset1, breaks=30 , xlim=c(0,300) , col=rgb(1,0,0,0.5) , xlab="Altura" , ylab="Peso" , main="" )
hist(dataset2, breaks=30 , xlim=c(0,300) , col=rgb(0,0,1,0.5) , xlab="Altura" , ylab="Peso" , main="")

ggplot()+
  geom_histogram(aes(x = dataset1),fill='red', color = 'blue', alpha = 0.2)+
  geom_histogram(aes(x=dataset2),fill = 'blue', color='yellow',alpha = 0.4)+
  

  
  
  
  # Exercício 4 - Encontre e corrija o erro no gráfico abaixo
install.packages("plotly")
library(plotly)
head(iris)

plot_

plot_ly(iris, 
        x = ~Petal.Length, 
        y = ~Petal.Width,  
        type="scatter", 
        mode = "markers" , 
        color = Species , marker=list(size=20 , opacity=0.5))

# O erro está em color é que todo atributuo plot_ly é escrito em com tio ~  antes abaixo
# Species é reescrito com ~  observe.




plot_ly(iris, 
        x = ~Petal.Length, 
        y = ~Petal.Width,  
        type="scatter", 
        mode = "markers" , 
        color = ~Species , marker=list(size=20 , opacity=0.5))


# Exercício 5 - Em anexo você encontra o arquivo exercicio5.png. Crie o gráfico que resulta nesta imagem.


# Resolução 

# Este gráfico é escrito em plot_ly
#para ver formatos de gráficos é bom acessar o site https://www.r-graph-gallery.com

#para fazer este gráfico é bom usar o dataset volcano

?volcano
View(volcano)

vulcon <- plot_ly(z=volcano,type = 'surface')

vulcon


# Exercício 6 - Carregue o arquivo input.json anexo a este script e imprima o conteúdo no console
# Dica: Use o pacote rjson
install.packages("rjson")
library(rjson)

?fromJSON
d <- rjson::fromJSON(file = "input.json")


View(d)


# Exercício 7 - Converta o objeto criado ao carregar o arquivo json do exercício anterior 
# em um dataframe e imprima o conteúdo no console.

j <- as.data.frame(d)

View(j)
# Exercício 8 - Carregue o arquivo input.xml anexo a este script.
# Dica: Use o pacote XML

install.packages('XML')
library(XML)

xm <-  xmlParse('input.xml')

xm




# Exercício 9 - Converta o objeto criado no exercício anterior em um dataframe

#Resolução 
#devemos converter usando do mesmo pacote XML 

XMDT <-  xmlToDataFrame(xm)

XMDT


# Exercício 10 - Carregue o arquivo input.csv em anexo e então responda às seguintes perguntas:

library(tidyverse)
library(magrittr)

csv_input <- read_csv('input.csv')

# Pergunta 1 - Quantas linhas e quantas colunas tem o objeto resultante em R?

str(csv_input)
#Possui 8 linhas e 5 colunas

# Pergunta 2 - Qual o maior salário?

max(csv_input$salary)


# Pergunta 3 - Imprima no console o registro da pessoa com o maior salário.
novo <- csv_input %>% group_by(name) %>% select(name,salary)

View(novo)

novo %>% filter(salary == max(novo$salary))

# Pergunta 4 - Imprima no console todas as pessoas que trabalham no departamento de IT.

csv_input %>% filter(dept == 'IT') %>% select(name)

# Pergunta 5 - Imprima no console as pessoas do departamento de IT com salário superior a 600. 

csv_input %>% filter(dept == 'IT',
                     salary > 600) %>% 
              select(name)


setwd()
save('c:/Users/joselacerda/Documents/Exercícios Data Science/R/')
