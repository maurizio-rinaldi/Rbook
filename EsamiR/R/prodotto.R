#' Prodotto in R
#'#' @author Maurizio Rinaldi
#' @param  A una funzione di una variabile in  R
#' @param  B una funzione di una variabile in  R
#' @return La funzione prodotto
#' @export
prodottoR<-function(A,B){
        temp<-function(A,B){paste(as.expression(body(A)),"*",as.expression(body(B)))}
        h<-function(x) eval(parse(text=temp(A,B)))
         return(h)}













