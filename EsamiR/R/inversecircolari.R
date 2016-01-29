#' generazione di funzioni acos asin e atan
#' @author Maurizio Rinaldi
#' @param tipo il tipo di funzione
#' @param da valore minimo dei parametri
#' @param a valore massimo dei parametri
#' @param quanti numero di parametri
#' @return Una funzione casuale tra asin, acos e atan
#' @export  

tipolin<-function(tipo,da=1,a=4,quanti=1)
{fr<-function(x) 0
        temp=c(sceltarange(da,a, quanti),sceltarange(da,a, quanti)) 
        ftex=paste("\\\\",tipo,"(",paste(temp[1:2],c("","x"),collapse="+",sep=""),")")
        fr1=paste(tipo," (",paste(temp[1:2],c("","*x"),collapse="+",sep=""),")")
        body(fr)= parse(text=fr1)
        domain=c(-Inf,Inf)
        if (tipo=="asin"|tipo=="acos") domain=c(-(1+temp[1])/temp[2],(1-temp[1])/temp[2])
        return(list(ftex,fr,domain))}