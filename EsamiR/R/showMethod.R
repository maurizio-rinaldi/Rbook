#' @include funzioneClass.R
setMethod(f = 'show',
          signature = 'Funzione',
          definition = function(object) {
                  cat('Un oggetto di  classe \'Funzione\'', '\n')
                  cat('formula:')
                   cat(show(object@fR))
                   cat('dominio:')
                   cat('(')
                   cat(object@dominio,sep=",")
                   cat(')')
          }
)
