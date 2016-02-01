#' Definizione della classe uniforme
#' @author Maurizio Rinaldi
#' @param n quanti valori
#' @param xmin minimo valore dell'estremo sinistro
#' @param xmax massimo valore dell'estremo sinistro
#' @param step incremento
#' @return n punti con distribuzione uniforme
#' @export
uniforme<-function(n,xmin=0,xmax=1000,step=10){
        a=sample(seq(xmin,xmax,step),1)
        h=ceiling(sample(seq(ceiling(a/40)*step,a,by=step),1))
        b=a+h
        x=runif(n,a,b)

        return(list(x,a,b))}


cut.unif<-function(dati,nintervals)
        {nint=nintervals+1
        dime=c()
        a=dati[[2]]
        b=dati[[3]]
        ampiezza=b-a
        while(nint>1)
        {
                nint=nint-1
                ampiezza/nint->passo
                primostep=-1
                while(primostep<=0){sample((passo%/%10-2):(passo%/%10+2),1,prob=c(max(nint-2,0),nint-1,nint,nint-1,max(nint-2,0)))*10->primostep}
                ampiezza=ampiezza-primostep
                dime=c(dime,primostep);cut=dime;para=c(a,b)}
return(dime)}
#cut.unif(z,5) ->v
#hist(z[[1]],breaks=c(0,cumsum(v))+z[[2]],freq=FALSE,col="cornsilk",xlab="",main="",axes=F)
#axis(1,at=c(0,cumsum(v))+z[[2]])
#axis(2)
