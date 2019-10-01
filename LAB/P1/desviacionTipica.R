
source("media.R")

#Calcula la media desviación típica de un vector de datos
desviacionTipica <- function (data) {
  v_media <- media(datos)
  acc = 0
  for (value in datos){
    acc <- acc + (v_media - value)^2
  }
  acc^(1/2)
}