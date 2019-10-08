

#Calcula la mediana de un conjunto de datos

#mediana <- function(data){
#    median(x, na.rm = FALSE)
#}


mediana <- function(data){
    size = length(x[!is.na(x)])
    if (size  %% 2 == 0){
      (x[size / 2 - 1] + x[size / 2]) / 2.0
    }
    else {
      x[size / 2]
     }

}