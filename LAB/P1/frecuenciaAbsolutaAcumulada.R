source("frecuenciaAbsoluta.R")


frecuenciaAbsolutaAcumulada <-function(data){
    frecuencia <- frecuenciaAbsoluta(data)
    uniquedata<-unique(data)
    uniquedata<- sort(uniquedata)
    newdata <- vector(mode="numeric", length=0)
    acc <- 0
    for (value in 1:length(frecuencia)) {
        acc <- frecuencia[value]+acc
        newdata <- c(newdata, acc)
    }
    setNames(newdata, uniquedata)
}