library("arules")

calapriori<-function(matrix,soporte,confianza){
    transacciones<-as(matrix,"transactions")
    asociaciones <- apriori(transacciones, 
        parameter=list(minlen=2, support=soporte,confidence=confianza), 
        control=list(verbose=F))
    inspect(asociaciones)
}