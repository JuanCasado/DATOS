saveToPdf <- function(name){
  Sweave(paste(name, ".Rnw", sep=""))
  tools::texi2pdf(paste(name, ".tex", sep=""),clean=T)
}