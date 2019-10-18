library("arules")

calapriori<-function(matrix,soporte,confianza){
    transacciones<-as(matrix,"transactions")
    asociaciones <- apriori(transacciones, 
        parameter=list(minlen=2, support=soporte,confidence=confianza), 
        control=list(verbose=F))
    inspect(asociaciones)
}

caleclat<-function(matrix,soporte){
    transacciones<-as(matrix,"transactions")
    asociaciones <- eclat(transacciones, 
        parameter=list(minlen=2, support=soporte), 
        control=list(verbose=F))
    inspect(asociaciones)
}