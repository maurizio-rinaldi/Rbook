#' Ricava la formulaR
#' @export
setGeneric( name = 'getR', def = function(object) standardGeneric ('getR') )
setMethod(f = 'getR',
          signature = 'Funzione',
          definition = function(object) return(object@fR)
)
