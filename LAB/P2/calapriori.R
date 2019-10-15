library("arules")

calapriori<-function(nametable,soporte,confianza){
    library("arules")
    muestra<-Matrix(as.matrix(read.table(nametable)), sparse=T)
    muestrangCMatrix<-as(muestra,"nsparseMatrix")
    transpmuestrangCMatrix<-t(muestrangCMatrix)
    transacciones<-as(transpmuestrangCMatrix,"transactions")
    #summary(transacciones)
    asociaciones <- apriori(transacciones, parameter = list(minlen=2, support = soporte,confidence = confianza), control=list(verbose=F))
    inspect(asociaciones)
}