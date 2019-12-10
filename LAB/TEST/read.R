read <- function (path, type) {
  print(type)
  switch(type, "TXT" = read.table(path),
         "CSV" = read.csv(path),
         "SAV" = read.spss(path, to.data.frame = TRUE),
         "EXCEL" = read.xlsx(path, 1, header=TRUE, colClasses=NA),
         "JSON" = fromJSON(file = path))
  #fromJSON(file = path)
}