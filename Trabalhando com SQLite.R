install.packages('RSQLite')
library(RSQLite)


getwd()
setwd('c:/Users/joselacerda/Documents/Exercícios Data Science/R/')


system('del exemplo.db')

conexaosqlite <- dbDriver("SQLite")

con <- dbConnect(conexaosqlite, dbname = 'exemplo.db')

dbListTables(con)

dbWriteTable(con,"mtcars", mtcars, row.names= T)

dbListTables(con)



dbReadTable(con,'mtcars')


dbWriteTable(con, 'mtcars2', mtcars[0,],row.names = T)

dbReadTable(con,'mtcars2')


dbListTables(con)


Query <- "select row_names from mtcars"
rs <- dbSendQuery(con,Query)
dados <-  fetch(rs, n = -1)
dados




