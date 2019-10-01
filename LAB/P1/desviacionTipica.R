
#Calcula la desviación típica de un vector de datos
#=================================================
# sd(data)
#=================================================

source("varianza.R")
desviacionTipica <- function (data) {
  varianza(data)^(1/2)
}

checkDesviacionTipica <- function(data){
  e <- sd(data) - desviacionTipica(data)
  message(paste("Error en la desviación típica:", e))
}