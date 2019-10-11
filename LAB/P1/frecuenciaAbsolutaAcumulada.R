source("frecuenciaAbsoluta.R")


frecuenciaAbsolutaAcumulada <-function(data){

    # calculamos la frecuencia
    frecuencia <-frecuenciaAbsoluta(data)
    # recuperamos el nombre de las columnas
    uniquedata<-colnames(frecuencia)
    # cogemos el vector de frecuencia
    onlydata<-frecuencia[1,]
    # creamos un vector vacio numerico
    newdata<- vector(mode="numeric", length=0)
    # recorremos desde la posicion 1 hasta lo maximo el vector
    for (value in 1:length(onlydata)) {
        # si el valor primero
        if(value==1){   
            # el acumulado es el mismo valor
            accumulated<-onlydata[value]
        # en otros casos
        }else{
            # el valor es anterior mas el valor suyo
            accumulated<-onlydata[value]+accumulated
        }
        # añadimos al vector el nuevo valor
        newdata<-c(newdata, accumulated)
    }
    # hacemos una matriz de tamaño 1xlongitud datos, añadimos los elementos la frecuencia
    matrix<-matrix(nrow=1,ncol=length(uniquedata), newdata, byrow=T)
    # en las filas ponemos el nombre que representa
    rownames(matrix)<-c("frecuencia acumulada")
    #en las columnas ponemos los datos
    colnames(matrix)<-c(uniquedata)
    #convertimos la matriz en una tabla
    matrix<-as.table(matrix)
}