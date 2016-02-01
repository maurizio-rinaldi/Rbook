<<<<<<< Updated upstream
#' Genera una funzione iperbolica random (oggetto di classe Funzione).
#' @param a il range dei parametri
#' @param b il numero di parametri
#' @param finito variabile logica per il dominio
#' @param xmax massima estensione se il dominio  e' finito
#' @return la funzione generata (un oggetto di classe Funzione)
#' @examples
#' x=generaHyp(finito=TRUE)
=======
#' Genera una funzione seno random (oggetto di classe Funzione).
#' @param a il range dei parametri
#' @param b il numero di parametri
#' @param finito variabile logica per il dominio
#' @return la funzione generata (un oggetto di classe Funzione)
#' @examples
#' generasin(finito=TRUE)
>>>>>>> Stashed changes
#' @export
generaHyp<-function(a=9,b=2,finito=FALSE,xmax=10) {
    fr<-function(x) 0
    domain=c(-xmax,xmax)
    x=0
<<<<<<< Updated upstream
    while(x==0) {
      sceltarange(4,-a,a,0)->temp;x=temp[1]*temp[4]-temp[2]*temp[3]}
    ftex=paste("\\\\frac{",paste(temp[1:2],c("","x"),collapse="+",sep=""),"}{",paste(temp[3:4],c("","x"),collapse="+",sep=""),"}",sep="")#### (a x+b)/(c x+d)
    fr1=paste("(",paste(temp[1:2],c("1","x"),collapse="+",sep="*"),")/(",paste(temp[3:4],c("1","x"),collapse="+",sep="*"),")",sep="")

    body(fr)= parse(text=fr1)
    environment(fr)<-globalenv()
    if (finito==TRUE)
      domain=sample(list(c(-xmax,-temp[3]/temp[4]),c( -temp[3]/temp[4],xmax)),1)[[1]] else
        domain=c(-Inf,-temp[3]/temp[4], -temp[3]/temp[4],xmax)
=======
    while(x==0) {sceltarange(4,-a,a)->temp;x=temp[1]*temp[4]-temp[2]*temp[3]}
    ftex=paste("\\\\frac{",paste(temp[1:2],c("","x"),collapse="+",sep=""),"}{",paste(temp[3:4],c("","x"),collapse="+",sep=""),"}",sep="")#### (a x+b)/(c x+d)
    fr1=paste("(",paste(temp[1:2],c("1","x"),collapse="+",sep="*"),")/(",paste(temp[3:4],c("1","x"),collapse="+",sep="*"),")",sep="")
    
    body(fr)= parse(text=fr1)
    environment(fr)<-globalenv()
    if (finito==TRUE)    domain=sample(list(c(-Inf,-temp[3]/temp[4]),c( -temp[3]/temp[4],Inf)),1)[[1]]
  
>>>>>>> Stashed changes
return(nuovaFunzione(fr,ftex,domain))
}
