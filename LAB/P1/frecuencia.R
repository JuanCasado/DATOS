frecuencia <- function(data,name){
  # cogemos la columna de la variable a calcular
  only<-data[ , name]
  # creamos un vector donde solo estas los elementos sin repetir
  uniquedata<-unique(only)
  # ordenamos el vector para aparezco correcto 
  uniquedata<- sort(uniquedata)
  # creamos un vector vacio numerico
  newdata<- vector(mode="numeric", length=0)
  # recorremos el vector elementos no repetidos  
  for (value in uniquedata) {
    # calculamos la cantidad de veces que se repite un numero
    total<-length(only[only==value])
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