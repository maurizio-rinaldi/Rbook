#' Class \code{Funzione} definisce  una classe di funzioni

#' @name Funzione-class
#' @slot fR an R formula
#' @slot fTex a Tex formula
#' @slot dominio the Domain
#' @exportClass Funzione
setClass("Funzione",
           slots=c(fR = 'function', fTex = 'character',dominio='numeric'),
prototype=list(fR=function(x) 0,fTex="x",dominio=   c(-Inf,Inf))
          )





