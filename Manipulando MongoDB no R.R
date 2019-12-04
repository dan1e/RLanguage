
#Manipulando MongoDB no R
setwd('c:/Users/joselacerda/Documents/Exercícios Data Science/R/')


install.packages('devtools')
library(devtools)
install_github('mongosoup/rmongodb',force = T)
library(rmongodb)
      
mongo <- mongo.create()

mongo.is.connected(mongo)

if(mongo.is.connected(mongo) == TRUE){
  mongo.get.databases(mongo)
}


coll <-  'users.contatos'


mongo.count(mongo,coll)

mongo.find.one(mongo,coll)
  

cidades <- mongo.distinct(mongo, coll,'city')


head(cidades)


pop <- mongo.distinct(mongo,coll, 'pop')


hist(pop)



mongo.count(mongo,coll, list('pop'=list('$lte'=2)))


pops <- (mongo.find.all(mongo,coll,list('pop'=list('$lte' =10))))

pops

#destroi a conexâo 
mongo.destroy()

library(jsonlite)
