
plotFrecuencyData <- function(data){
  media<-mediaAritmetica(data)
  v_mediana <- mediana(data)
  v_moda <- moda(data)
  barplot(frecuenciaRelativa(data))
  abline(v=c(media, v_mediana, v_moda), col=c("blue","red","green"), lty=c(1,1,1), lwd=c(5,5,5))
  legend("topright", legend=c("media", "mediana","moda"), fill=c("blue","red","green"))
}