
source("frecuenciaRelativa.R")
source("desviacionTipica.R")
source("mediaAritmetica.R")
source("mediana.R")
source("moda.R")

plotFrecuencyData <- function(data, xlabel="") {
  uniquedata<-unique(data)
  frecuencia_relativa <- as.table(frecuenciaRelativa(data))
  mediaAritmetica_ <- mediaAritmetica(data)
  mediana_ <- mediana(data)
  moda_ <- moda(data)
  desviacion_tipica_ <- desviacionTipica(data)
  tchebychev_min <- media_-2*desviacion_tipica_
  tchebychev_max <- media_+2*desviacion_tipica_
  min_range = min(tchebychev_min, min(uniquedata))
  max_range = max(tchebychev_min, max(uniquedata))
  plot(frecuencia_relativa, type="h", xlab=xlabel, xlim=c(min_range,max_range))
  abline (v=c(mediaAritmetica_, mediana_, moda_, tchebychev_min, tchebychev_max), 
          col=c("blue","red","green", "gray", "gray"), lty=c(2,2,2,3,3), lwd=c(2,2,2,1,1))
  legend("topright", legend=c("media", "mediana","moda", "2*desviación típica"), fill=c("blue","red","green","gray"))
}