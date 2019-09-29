read <- function (path, type) {
  switch(type, "TXT" = read.table(path),
         "CSV" = read.csv(path),
         "SAV" = read.spss(path, to.data.frame = TRUE))
}