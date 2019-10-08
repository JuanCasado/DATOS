

#Calcula la mediana de un conjunto de datos

mediana <- function(data){
  x = sort(data)
  size = length(x)
  if (size  %% 2 == 0){
    (x[size / 2] + x[(size / 2) +1]) / 2.0
  }
  else {
     x[size / 2]
  }
}