
#source("./load_dependencies.R")
#load_dependencies()

list_actions <- function(path){
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
list_actions()
keep_looping <- T
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
        for (i in 1:length(files)) {
          message(paste(c("[", i, "] ", files[i])))
        }
      }else{
        message("There are no directories")
      }
    },
    "l" = {
      files = dir()[!file.info(dir())$isdir]
      if (length(files) > 1){
        for (i in 1:length(files)) {
          message(paste(c("[", i, "]", files[i])))
        }
      }else{
        message("["+i+"]"+"There are no files")
      }
    },
    {
      if(file.exists(user_input)){
        id <- identify(user_input)
      }else{
        message("Not a valid file name")
      }
    }
  )
}