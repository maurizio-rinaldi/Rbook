#' Definizione della classe uniforme
#' @author Maurizio Rinaldi
#' @param n quanti valori
#' @param xmin minimo valore dell'estremo sinistro 
#' @param xmax massimo valore dell'estremo sinistro 
#' @param step incremento 
#' @return n punti con distribuzione gaussiana
#' @export  

gaussiana<-function(n,xmin=0,xmax=1000,step=10){
 
        mu=sample(seq(xmin,xmax,step),1)
        sigma=mu/sample(2:10,1)
        x=rnorm(n,mu,sigma)
        return(x)}
