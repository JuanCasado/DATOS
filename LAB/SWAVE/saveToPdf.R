saveToPdf <- function(name){
  rnwfile <- system.file("Sweave", paste(name, ".Rnw", sep=""), package="utils")
  Sweave(rnwfile)
  tools::texi2pdf(paste(name, ".tex", sep=""))
}