identify <- function(path) {
  ext <- file_ext(path)
  switch(ext, "txt" = fileTypes()$TXT,
              "TXT" = fileTypes()$TXT,
              "Txt" = fileTypes()$TXT,
              "csv" = fileTypes()$CSV,
              "Csv" = fileTypes()$CSV,
              "CSV" = fileTypes()$CSV,
              "xls" = fileTypes()$EXCEL,
              "Xls" = fileTypes()$EXCEL,
              "XLS" = fileTypes()$EXCEL,
              "xlsx" = fileTypes()$EXCEL,
              "XLSX" = fileTypes()$EXCEL,
              "Xlsx" = fileTypes()$EXCEL,
              "sav" = fileTypes()$SAV,
              "SAV" = fileTypes()$SAV,
              "Sav" = fileTypes()$SAV,
              "json" = "JSON",
              fileTypes()$NOT_LISTED)
}

