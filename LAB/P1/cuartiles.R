

#Calcula los percentiles deseados de un conjunto de datos

cuartiles <- function(data){
    quantile(data,prob=c(.25,.5,.75), na.rm=TRUE)
}
