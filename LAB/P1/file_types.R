fileTypes <- function() {
  structure(
    list(TXT = "TXT", EXCEL = "EXCEL", SAV = "SAV", CSV = "CSV"),
    class= c("fileTypes", "enum", "list")
  )
}