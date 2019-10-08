

#Calcula el cuartil 54 de un conjunto de datos

cuantil54 <- function(data){
  quantile(data,.54, na.rm=TRUE)
}