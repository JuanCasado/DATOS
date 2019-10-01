
#Nos presnta los valores que hay disponibles en los datos mostrándonos su tipo
getInfo <- function (data, graphics=F) {
  res <- lapply(data, class)
  res_frame <- data.frame(unlist(res))
  summary <- table(res_frame)
  if (graphics){
    barplot(summary, main="Data Types", col="steelblue", ylab="Number of Features")
  }
  message("Datos cargados: ")
  print(res_frame)
  message("Resumen: ")
  print(summary)
}