

#Calcula la media geométrica de un vector de datos

mediaGeometrica <- function(data){
  prod(data)^(1/length(data))
}