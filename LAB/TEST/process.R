

#Para cada uno de los ficheros vamos a calcular todas las magnitudes vistas en el tema, es decir vamos a obtener las
#frecuencias, la media, que será la aritmética; las medidas de dispersión, desviación típica y varianza, y las medidas de
#ordenación, mediana y cuartiles, incluido el cuantil 54. Para los datos del fichero cardata.sav la variable analizada será
#mpg2

#Rango, frecuencia absoluta, frec.relativa,frec.abs.acumulada, frec.rel.acum,
#media aritmética, media geométrica, media armónica, moda, mediana,
#dispersión absoluta: desviación típica, desviación media, varianza
#dispersión relativa: coeficiente de variación de Pearson
#cuartiles y cuantil 54


#Media aritmética
mediaAritmeticas <- function(datos){
  mean(datos)
} 

#Media geométrica
mediaGeometrica <- function(datos){
  exp(sum(log(datos))/length(datos))
}

#Media armónica
mediaArmonica <- function(datos){
  1/mean(1/datos)
}

#Frecuencia absoluta
frecuenciaAbsoluta <- function(datos){
  ftable(datos)
}

#Frecuencia relativa
frecuenciaRelativa <- function(datos){
  len <- length(datos)
  fabs <- table(datos)
  for(i in 1:length(fabs)){
    fabs[i]  = fabs[i]/len
  }
  # map(fabs, function(x){x/len})
  fabs
}

#Frecuencia acumulada
frecuenciaRelativaAcumulada <- function(datos){
  cumsum(frecuenciaRelativa(datos))
}

#Frecuencia absoluta
frecuenciaAbsolutaAcumulada <- function(datos){
  cumsum(frecuenciaAbsoluta(datos))
}

#Rango
rango <- function(datos){
  max(datos)-min(datos)
}

moda <- function(datos){

  uniqv <- unique(datos)
  uniqv[which.max(tabulate(match(datos, uniqv)))] #https://www.tutorialspoint.com/r/r_mean_median_mode.htm
  
}

mediana <- function(datos){
  median(datos,na.rm=F)
}



procesar <- function(datos){
  
    #Calcular
    media_aritmetica<-mediaAritmeticas(datos)
    media_geometrica<-mediaGeometrica(datos)
    media_armonica<-mediaArmonica(datos)
  
    frecuencia_absoluta <- frecuenciaAbsoluta(datos)
    frecuencia_relativa <- frecuenciaRelativa(datos)
    frecuencia_absoluta_acumulada <- frecuenciaAbsolutaAcumulada(datos)
    frecuencia_relativa_acumulada <- frecuenciaRelativaAcumulada(datos)
    
    
    #Mostrar
    message(paste("Media aritmética: ", media_aritmetica))
    message(paste("Media geométrica: ", media_geometrica))
    message(paste("Media armónica: ", media_armonica))
    
    
    print(frecuencia_absoluta)
    print(frecuencia_relativa)
    print(frecuencia_relativa_acumulada)
    print(frecuencia_absoluta_acumulada)
    
    print(rango(datos))
    print(moda(datos))
  
}
