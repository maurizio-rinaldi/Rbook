#' Genera una funzione seno random (oggetto di classe Funzione).
#' @param a il range dei parametri
#' @param b il numero di parametri
#' @param finito variabile logica per il dominio
#' @return la funzione generata (un oggetto di classe Funzione)
#' @examples
#' generasin(finito=TRUE)
#' @export
generasin<-function(a=9,b=2,finito=FALSE) {
        fr<-function(x) 0
        temp=sceltarange(b,-a,a,0)
        ftex=paste("\\\\sin(",paste(temp[1:2],c("","x"),collapse="+",sep=""),")")
        fr1=paste("sin(",paste(temp[1:2],c("","*x"),collapse="+",sep=""),")")
        fr1=gsub("\\+-","-",fr1)
        body(fr)= parse(text=fr1)
        k=sample(-3:3,1,prob=c(1,2,3,6,3,2,1))
        environment(fr)<-globalenv()
        domain=c(-Inf,Inf)
        if (finito==TRUE) domain=sort(c(-temp[1]/temp[2],(2*pi-temp[1])/temp[2])
                                   +2*pi *k/temp[2])
        return(nuovaFunzione(fr,ftex,domain))
}
