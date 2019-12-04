
#teste sobre variáveis privadas internos 

setwd('C:/Users/joselacerda/Documents/Exercícios Data Science/R/')

x <- matrix(NA,nrow = 4, ncol = 4)
rm(x)


preencher <- function(...){
  
  
  for(i in 1:length(...)){
    
    ...[i] <- sample(1:100,1)
    
    }
return(...)
}



preencher(x)

