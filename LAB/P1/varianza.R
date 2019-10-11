
#Calcula la media desviación varianza de un vector de datos
#=================================================
# var(data)
#=================================================

source("mediaAritmetica.R")
varianza <- function(data){
  v_media <- mediaAritmetica(data)
  acc = 0
  for (value in data){
    acc <- acc + (value - v_media)^2
  }
  acc/length(data)
}

checkVarianza <- function(data){
  e <- var(data) - varianza(data)
  message(paste("Error en la varianza:", e))
}