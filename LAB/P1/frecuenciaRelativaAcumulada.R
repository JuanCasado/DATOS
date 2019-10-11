source("frecuenciaAbsoluta.R")


frecuenciaRelativaAcumulada <-function(data){
    # calcumos la frecuencia acumulada
    frecuencia <-frecuenciaAcumulada(data)
    # recuperamos el nombre de las columnas
    uniquedata<-colnames(frecuencia)
    # cogemos el vector de frecuencia acumulada
    onlydata<-frecuencia[1,]
    # calculamos el total de datos 
    total<-onlydata[length(onlydata)]
    # creamos un vector vacio numerico
    newdata<- vector(mode="numeric", length=0)
    # recorremos desde la posicion 1 hasta lo maximo el vector
    for (value in 1:length(onlydata)) {
        #variable que calcula relativa entre la esa posicion entre total 
        relative<-onlydata[value]/total
        # añadimos al vector el nuevo valor
        newdata<-c(newdata, relative)
    }
    # hacemos una matriz de tamaño 1xlongitud datos, añadimos los elementos la frecuencia
  matrix<-matrix(nrow=1,ncol=length(uniquedata), newdata, byrow=T)
  # en las filas ponemos el nombre que representa
  rownames(matrix)<-c("frecuencia acumulada relativa")
  #en las columnas ponemos los datos
  colnames(matrix)<-c(uniquedata)
  #convertimos la matriz en una tabla
  matrix<-as.table(matrix)
}