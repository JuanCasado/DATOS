

#Calcula los percentiles deseados de un conjunto de datos

cuartiles <- function(data){
    x = sort(data)
    size = length(x)
    if (size  %% 2 == 0){
        c((x[size / 4] + x[(size / 4) +1]) / 2.0 ,
        (x[size / 2] + x[(size / 2) +1]) / 2.0 ,
        (x[size *0.75] + x[size * 0.75 + 1]) / 2.0)

    }
    else {
        x[size / 2]
  }

}
