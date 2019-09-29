rfrec <- function(data){
  len <- length(data)
  fabs <- table(data)
  map(fabs, function(x){x/len})
}