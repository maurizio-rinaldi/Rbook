#' Ricava la formulaTex
setGeneric( name = 'getTex', def = function(object) standardGeneric ('getTex') )
setMethod(f = 'getTex',
          signature = 'Funzione',
          definition = function(object) return(object@fTex)
)
