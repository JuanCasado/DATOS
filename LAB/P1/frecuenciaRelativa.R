#Calcula la frecuencia relativa de un vector de datos
#=================================================
# tablefrecuencia=table(tablename$variablename)
# prop.table(tablefrecuencia)
#=================================================


source("frecuencia.R")

frecuenciaRelativa <- function(data){
    #conseguimos frecuencia
    frecuencia <-frecuencia(data)
    # recuperamos el nombre de las columnas
    uniquedata<-colnames(frecuencia)
    #cogemos solo el vector de frecuencia
    onlydata<-frecuencia[1,]
    #calculamos la suma total de frecuencia
    total<-sum(onlydata)
    #creo vector vacio numerico
    newdata<- vector(mode="numeric", length=0)
    #recorro todo el vector de datos
    for (value in 1:length(onlydata)) {
        # realizamos la division entre los datos y el total
        accumulated<-onlydata[value]/total
        # lo añado al nuevo array
        newdata<-c(newdata, accumulated)
    }
    # hacemos una matriz de tamaño 1xlongitud datos, añadimos los elementos la frecuencia
  matrix<-matrix(nrow=1,ncol=length(uniquedata), newdata, byrow=T)
  # en las filas ponemos el nombre que representa
  rownames(matrix)<-c("frecuencia relativa")
  #en las columnas ponemos los datos
  colnames(matrix)<-c(uniquedata)
  #convertimos la matriz en una tabla
  matrix<-as.table(matrix)
}