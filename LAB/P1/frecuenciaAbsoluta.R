#Calcula la frecuencia de un vector de datos
#=================================================
# data = tablename$variablename
# table(tablename$variablename)
#=================================================

frecuenciaAbsoluta <- function(data){
  # creamos un vector donde solo estas los elementos sin repetir
  uniquedata<-unique(data)
  # ordenamos el vector para aparezco correcto 
  uniquedata<- sort(uniquedata)
  # creamos un vector vacio numerico
  newdata<- vector(mode="numeric", length=0)
  # recorremos el vector elementos no repetidos  
  for (value in uniquedata) {
    # calculamos la cantidad de veces que se repite un numero
    total<-length(data[data==value])
    # añadimos el total al vector con veces que se repitio
    newdata<-c(newdata, total)
  }
  # hacemos una matriz de tamaño 1xlongitud datos, añadimos los elementos la frecuencia
  matrix<-matrix(nrow=1,ncol=length(uniquedata), newdata, byrow=T)
  # en las filas ponemos el nombre que representa
  rownames(matrix)<-c("frecuencia")
  #en las columnas ponemos los datos
  colnames(matrix)<-c(uniquedata)
  #convertimos la matriz en una tabla
  matrix<-as.table(matrix)
}

# comprueba si  son iguales la frecuencia realizada o la dada por R
checkFrecuencia <- function(data){
  if(identical(as.numeric(frecuenciaAbsoluta(data)[1,]),as.numeric(table(data)))){
    message(paste("Las dos frecuencias son las mismas"))
  }else{
    message(paste("Las dos frecuencias son diferentes"))
  }
}

frecuenciadraw <-function(data,namevariable){
  frecuencia <-frecuenciaAbsoluta(data)
  # recuperamos el nombre de las columnas
  uniquedata<-as.numeric(colnames(frecuencia))
  matrixA<-matrix(nrow=2,ncol=length(uniquedata), c(uniquedata,frecuencia), byrow=T)
  frd<-as.table(matrixA)   
  plot(frd[1,],frd[2,],"o",ylab="frecuencia",xlab=namevariable, main="Frecuencia", panel.first=grid(),col="red")
}

frecuenciaHistograma <-function(data,namevariable){
  fr <-frecuenciaAbsoluta(data)
  hist(fr,xlab="Cantidad",ylab="Frecuencia",main=paste("Histograma de ",namevariable), col="red",border="red4")
}