#' Prodotto in R
#'
#' @param  A un oggetto di classe funzione
#' @param  B un oggetto di classe funzione
#' @return La funzione prodotto
#' @export
prodottoR<-function(A,B){
        temp<-function(A,B){paste(as.expression(body(A)),"*",as.expression(body(B)))}
        h<-function(x) eval(parse(text=temp(A,B)))
         return(h)}













