#' tex prodotto
#' @param x1 A Funzione Tex
#' @param x2 B Funzione Tex
#' @return The product of the two functions
#'@export prodottoTex
#'@examples
#' x1="e^x"
#' x2="log(x)"
#' prodottoTex(x1,x2)
prodottoTex<-function(x1,x2){return(paste("(",x1,")","(",x2,")",sep=""))}
