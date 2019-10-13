

source('mediaAritmetica.R')

#Calcula la media armónica de un vector de datos
mediaArmonica <- function(data){
  1/mediaAritmetica(1/data)
}