
source("frecuenciaAbsoluta.R")

# Clacula el valor de mayor aparición de un conjunto de datos
moda=function(data) {
  frecuencia_absoluta=frecuenciaAbsoluta(data)
  datos_ordenados=sort(frecuencia_absoluta,TRUE)
  as.numeric(rownames(as.matrix(datos_ordenados))[1])
}