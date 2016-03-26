#' Constructor della Class Funzione.
#'
#' @name initialize
#' @slot fR an R formula
#' @slot fTex a Tex formula
#' @slot dominio the Domain
#' @export
setMethod(f = 'initialize',
          signature = 'Funzione',
          definition = function(.Object, fR,fTex,dominio) {
                  if( !missing(fR) ) {
                          .Object@fR <-  fR
                          if(!missing(fTex))
                                  .Object@fTex <- fTex
                          else
                                  .Object@fTex <- ""
                          if(!missing(dominio))
                                  .Object@dominio <- dominio
                          else
                                  .Object@dominio <- list(c(-Inf,Inf))
                          validObject(.Object)
                  }
                  return(.Object)
          }
)


