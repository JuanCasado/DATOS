
setClass("apriori_results", slots=list(cause="character", effect="character", confidence="numeric"))

newResult <- function(cause, effect, confidence){
  new_result <- new("apriori_results")
  new_result@cause = cause
  new_result@effect = effect
  new_result@confidence = confidence
  new_result
}

countApparitions <- function(matrix, name_combination) {
  cols <- colnames(matrix)
  count <- 0
  for (col in cols){
    complete <- T
    for (name in name_combination){
      complete <- matrix[name, col]&&complete
    }
    if (complete){
      count <- count + 1
    }
  }
  count
}

elementsWithSupport <- function(matrix, support){
  names <- rownames(matrix)
  cols <- colnames(matrix)
  total_cases <- length(cols)
  ans = c()
  for (size in 1:length(names)){
    name_combinations <- combn(names, m=size)
    for (name_index in 1:dim(name_combinations)[2]){
      name_combination <- name_combinations[,name_index]
      apparitions <- countApparitions(matrix, name_combination)
      if ((apparitions/total_cases) >= support)
        ans = c(ans, list(name_combination))
    }
  }
  ans
}

f_apriori <- function(matrix, support, confidence) {
  chunks <- c()
  chunk_combinations <- combn(elementsWithSupport(matrix, support), m=2)
  for (chunk_combinations_index in 1:dim(chunk_combinations)[2]){
    test_chunk <- chunk_combinations[,chunk_combinations_index]
    first <- test_chunk[1][[1]]
    second <- test_chunk[2][[1]]
    hole <- c(first, second)
    add <- T
    for (e1 in first)
      for (e2 in second)
        if (e1==e2)
          add <- F
    if (add){
      first_apparitions <- countApparitions(matrix, first)
      second_apparitions <- countApparitions(matrix, second)
      hole_apparitions <- countApparitions(matrix, hole)
      c1 <- (hole_apparitions/first_apparitions)
      c2 <- (hole_apparitions/second_apparitions)
      if((hole_apparitions/first_apparitions) >= confidence)
        chunks <- c(chunks, newResult(first, second, c1))
      if((hole_apparitions/second_apparitions) >= confidence)
        chunks <- c(chunks, newResult(second, first, c2))
    }
  }
  chunks
}
