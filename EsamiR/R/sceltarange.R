#' Definizione di sceltarange
#' @param m quanti valori
#' @param escluso i valori da eliminares
#' @param da valore minimo dei parametri
#' @param a valore massimo dei parametri
#' @param logica se il campione prevede ripetizioni
#' @return  m numeri nell'intervallo specificato
#' @export  

sceltarange<-function(m=1,da,a,escluso=c(),logica=T) { 
        temp=(da:a); setdiff(temp,escluso)->temp
        return(sample(temp,m,replace=logica))}

 
