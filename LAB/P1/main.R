
source("load_dependencies.R")

listActions <- function(path){
  message("-----------------------------------------")
  message("q : Quits the aplication")
  message("i : List actions")
  message("l : List files of current directory")
  message("d : List dirs of current directory")
  message("filename : Take actions over a file")
  message("-----------------------------------------")
}

welcome <- function(path){
  message("Welcome to: ")
  message("-----------------------------------------")
  message("           *FILE EXPLORER*")
  message("-----------------------------------------")
}

welcome()
listActions()
keep_looping <- T
init_wd <- getwd()
while (keep_looping){
  user_input <- readline(prompt="> ")
  switch(user_input,
    "q" = {
      message("Quiting")
      keep_looping = F
    },
    "i" = {
      list_actions()
    },
    "d" = {
      files = dir()[file.info(dir())$isdir]
      if (length(files) > 1){
        for (file in files) {
          message(file)
        }
      }else{
        message("There are no directories")
      }
    },
    "l" = {
      files = dir()[!file.info(dir())$isdir]
      if (length(files) > 1){
        for (file in files) {
          message(file)
        }
      }else{
        message("There are no files")
      }
    },
    {
      input_names <- strsplit(user_input, " ")[[1]]
      if (length(input_names)==1){
        if (input_names[1] == ".."){
          setwd("..")
          message(paste("Change directorie to: ", getwd()))
        }else if (file.exists(input_names[1]) && file.info(input_names[1])$isdir){
          setwd(input_names[1])
          dir_chaged <- F
          message(paste("Change directorie to: ", getwd()))
        }
      }
      for (name in input_names) {
        if(file.exists(name)){
          if(!file.info(name)$isdir){
            message(paste("Reading: ", name))
            id <- identify(name)
            if (id == fileTypes()$NOT_LISTED){
              message("File type not recognized")
            }else{
              file <- read(name, id)
              #process (file)
            }
          }
        }else{
          message(paste(name, " is not a valid file name"))
        }
      }
    }
  )
}
set(init_wd)