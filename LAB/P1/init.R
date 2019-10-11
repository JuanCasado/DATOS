
library("graphics")

#Datos a utilizar
data <- read.csv("AB_NYC_2019.csv") #https://www.kaggle.com/dgomonov/new-york-city-airbnb-open-data#AB_NYC_2019.csv

#Archivos adicionales
source("getInfo.R")
source("saveToPdf.R")
source("moda.R")
source("plotFrecuencyData.R")

#Frecuencias
source("frecuenciaAbsoluta.R")
source("frecuenciaAbsolutaAcumulada.R")
source("frecuenciaRelativaAcumulada.R")
source("frecuenciaRelativa.R")

#Media y desviaciones
source("mediaAritmetica.R")
source("mediaGeometrica.R")
source("mediaArmonica.R")
source("varianza.R")
source("desviacionTipica.R")
source("desviacionMedia.R")
source("tchebychev.R")

#Factores de ordenación
source("mediana.R")
source("cuartiles.R")
source("cuantil54.R")