source("frecuenciaAbsolutaAcumulada.R")


frecuenciaRelativaAcumulada <-function(data){
  frecuencia <- frecuenciaAbsolutaAcumulada(data)
  uniquedata<-unique(data)
  uniquedata<- sort(uniquedata)
  newdata<- vector(mode="numeric", length=0)
  for (index in 1:length(uniquedata)) {
    newdata <- c(newdata, frecuencia[index]/length(data))
  }
  setNames(newdata, uniquedata)
}