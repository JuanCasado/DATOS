

#Calcula el cuartil 54 de un conjunto de datos

cuantil54 <- function(x){
  size = length(x)
  x[ceiling(size*0.54)]
}