fileTypes <- function() {
  structure(
    list(TXT = "TXT", EXCEL = "EXCEL", SAV = "SAV", CSV = "CSV", DIR = "DIR", NOT_LISTED = "NOT_LISTED"),
    class= c("fileTypes", "enum", "list")
  )
}