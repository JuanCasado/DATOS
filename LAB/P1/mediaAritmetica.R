
#Calcula la media aritmética de un vector de datos
#=================================================
# mean(data)
#=================================================
mediaAritmetica <- function(data){
  acc <- 0
  for (value in data) {
    acc <- acc + value
  }
  acc / length(data)
}

checkMediaAritmetica <- function(data){
  e <- mean(data) - media(data)
  message(paste("Error en la media aritmetica:", e))
}
