#' Genera m valori random nell'intervallo da:a esclusi i valori. Con o senza ripetizioni
#' @param m quanti valori
#' @param escluso i valori da eliminare
#' @param da valore minimo dei parametri
#' @param a valore massimo dei parametri
#' @param logica se il campione prevede ripetizioni
#' @return  m numeri nell'intervallo specificato
#' @export  

sceltarange<-function(m=1,da,a,escluso=c(),logica=T) { 
        temp=(da:a); setdiff(temp,escluso)->temp
        return(sample(temp,m,replace=logica))}

 
