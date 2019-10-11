
source("frecuenciaRelativa.R")
source("mediaAritmetica.R")
source("mediana.R")
source("moda.R")

plotFrecuencyData <- function(data){
  barplot(frecuenciaRelativa(data))
  abline(v=c(mediaAritmetica(data), mediana(data), moda(data)), col=c("blue","red","green"), lty=c(1,1,1), lwd=c(5,5,5))
  legend("topright", legend=c("media", "mediana","moda"), fill=c("blue","red","green"))
}