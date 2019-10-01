
#Calcula la media aritmética de un vector de datos
media <- function(data){
  acc <- 0
  for (value in data) {
    acc <- acc + value
  }
  acc / length(data)
}
