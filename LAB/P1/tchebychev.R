
#Calculamos el según el teorema de tchebychev el radio dentro del cual hay k*s valores

source("desviacionTipica.R")

tchebychev <- function(data, limit=10){
  desviacion_tipica = desviacionTipica(data)
  for (k in 2:limit){
    data_percentage <- (1-(1/k^2))*100
    radious = desviacion_tipica*k
    message(paste("En un radio de",radious,"se encuentran el",data_percentage,"de los datos, k=",k))
  }
}

tchebychevOf <- function(data, desired_percentage){
  desviacion_tipica = desviacionTipica(data)
  k <- (-1/(desired_percentage/100 - 1))^(1/2)
  radious = desviacion_tipica*k
  message(paste("En un radio de",radious,"se encuentran el",desired_percentage,"de los datos, k=",k))
}