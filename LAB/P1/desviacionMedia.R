
#Calcula la desviación media de un vector de datos

source("mediaAritmetica.R")
desviacionMedia <- function (data){
  v_media <- media(data)
  acc = 0
  for (value in data){
    acc <- acc + abs(value - v_media)
  }
  acc/length(data)
}