#Calcula la frecuencia relativa de un vector de datos
#=================================================
# tablefrecuencia=table(tablename$variablename)
# prop.table(tablefrecuencia)
#=================================================


source("frecuenciaAbsoluta.R")

frecuenciaRelativa <- function(data){
  frecuencia <-frecuenciaAbsoluta(data)
  uniquedata<-unique(data)
  uniquedata<- sort(uniquedata)
  newdata <- vector(mode="numeric", length=0)
  for (value in 1:length(uniquedata)) {
    newdata <- c(newdata, frecuencia[value]/length(data))
  }
  setNames(newdata, uniquedata)
}