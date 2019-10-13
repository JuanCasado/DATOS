#Calcula la frecuencia de un vector de datos
#=================================================
# data = tablename$variablename
# table(tablename$variablename)
#=================================================

frecuenciaAbsoluta <- function(data){
  uniquedata<-unique(data)
  uniquedata<- sort(uniquedata)
  newdata<- vector(mode="numeric", length=0)
  for (value in uniquedata) {
    ammount<-length(data[data==value])
    newdata<-c(newdata, ammount)
  }
  setNames(newdata, uniquedata)
}

# comprueba si  son iguales la frecuencia realizada o la dada por R
checkFrecuencias <- function(f1, f2){
  errors <- 0
  for (i in 1:min(c(length(f1),length(f2)))){
    if (f1[i]!=f2[i]){
      errors <- errors +1
      message(paste(f1[i], " != " ,f2[i]))
    }
  }
  if (length(f1) != length(f2)){
    message("Diferent len")
  }
  message(paste("Errors: ", errors))
}