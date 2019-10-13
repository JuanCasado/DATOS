
source("frecuenciaRelativa.R")
source("mediaAritmetica.R")
source("mediana.R")
source("moda.R")

plotFrecuencyData <- function(data){
  fr <- table(data)/length(data)
  mediaAritmetica_ <- mediaAritmetica(data)
  mediana_ <- mediana(data)
  moda_ <- moda(data)
  plot(fr)
  abline(v=c(mediaAritmetica_, mediana_, moda_), col=c("blue","red","green"), lty=c(3,3,3), lwd=c(5,5,5))
  legend("topright", legend=c("media", "mediana","moda"), fill=c("blue","red","green"))
}