#' Definisce il dominio del prodotto in termini di intervalli. 
#' 
#' Al momenti gli intervalli sono aperti caratterizzati da  un numero pari di numeri ordinati.
#' @param x   dominio della prima funzione (n1 intervalli)
#' @param y   dominio della seconda funzione (n2 intervalli)
#' @return Il dominio del prodotto
#' @examples
#' compareIntervals(c(1,2,3,4),c(2,2.4,3,6))
#' @export
compareIntervals<-function(x,y)
        {intx=inty=list()
        for (i in seq(length(x)/2)) intx[[i]]=c(x[(2*i-1):(2*i)])
        for (i in seq(length(y)/2)) inty[[i]]=c(y[(2*i-1):(2*i)])
        casi=list(c(1,1,2,2),c(1,2,1,2),c(1,2,2,1),c(2,2,1,1),c(2,1,2,1),c(2,1,1,2))
        xy=c()
        listxy=list()
        for(s in 1:length(intx))
                for(t in 1:length(inty))
        {cbind(intx[[s]],c(1,1))->t1
        cbind(inty[[t]],c(2,2))->t2
        temp=rbind(t1,t2)
        temp[order(temp[,1]), ]->temp
        temp[,2]->tempo
        for (i in 1:6) if(identical(casi[[i]],tempo)) k=i
        if(k==1|k==4) {}
        if(k %in% c(2,3,5,6))  xy=c(xy,temp[2:3,1])}
        return(xy)
}

       
    
    