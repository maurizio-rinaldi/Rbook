#' @include funzioneClass.R
setMethod(f = 'plot',
          signature= 'Funzione',
          definition = function (x,y,...)
                 { g<-x@fR
                 d<-x@dominio
<<<<<<< Updated upstream
          curve(g,d[1],d[2])
          }
=======
          curve(g,d[1],d[2])}
>>>>>>> Stashed changes
)
