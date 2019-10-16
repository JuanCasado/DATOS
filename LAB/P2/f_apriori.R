
setClass("support_results", slots=list(elements="character", support="numeric"))
setClass("apriori_results", slots=list(cause="support_results", effect="support_results", confidence="numeric", support="numeric"))

newResult <- function(cause, effect, confidence, support){
  new_result <- new("apriori_results")
  new_result@cause = cause
  new_result@effect = effect
  new_result@confidence = confidence
  new_result@support = support
  new_result
}
newSupport <- function(elements, support){
  new_support <- new("support_results")
  new_support@elements = elements
  new_support@support = support
  new_support
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
      s <- (apparitions/total_cases)
      if (s >= support)
        ans = c(ans, newSupport(name_combination, s))
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
    hole <- c(first@elements, second@elements)
    #Las combinaciones con elementos repetidos en ambos conjuntos son eliminadas
    add <- T
    for (e1 in first@elements)
      for (e2 in second@elements)
        if (e1==e2)
          add <- F
    if (add){
      first_apparitions <- countApparitions(matrix, first@elements)
      second_apparitions <- countApparitions(matrix, second@elements)
      hole_apparitions <- countApparitions(matrix, hole)
      c1 <- (hole_apparitions/first_apparitions)
      c2 <- (hole_apparitions/second_apparitions)
      if((c1>=confidence) || (c2>=confidence)){
        s <- countApparitions(matrix, hole)/length(colnames(matrix))
      }
      if(c1 >= confidence)
        chunks <- c(chunks, newResult(first, second, c1, s))
      if(c2 >= confidence)
        chunks <- c(chunks, newResult(second, first, c2, s))
    }
  }
  chunks
}

toTable <- function(apriori_results){
  cause <- c()
  effect <- c()
  support <- c()
  confidence <- c()
  for (element_index in 1:length(apriori_results)){
    element <- apriori_results[element_index][[1]]
    cause <- c(cause, paste(element@cause@elements,collapse=" "))
    effect <- c(effect, paste(element@effect@elements,collapse=" "))
    support <- c(support, element@support)
    confidence <- c(confidence, element@confidence)
  }
  results<-data.frame(cause,effect,support,confidence)
  names(results) <- c("cause","effect","support","confidence")
  results
}

readAprioriFile <- function(file){
  muestra<-Matrix(as.matrix(read.table(file)), sparse=T)
  muestrangCMatrix<-as(muestra,"nsparseMatrix")
  t(muestrangCMatrix)
}
