#' Crea una nuova funzione
#'
#' @name nuovaFunzione
#' @param fR an R formula
#' @param fTex a Tex formula
#' @param dominio the Domain
#' @return Una nuova Funzione
#' @examples
#' nuovaFunzione(f<-function(x) x^2,"x^2",c(-Inf,Inf))
#' @export
nuovaFunzione <- function(fR,fTex,dominio) new("Funzione",fR,fTex,dominio)
