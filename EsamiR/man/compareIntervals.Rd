% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/compareIntervals.R
\name{compareIntervals}
\alias{compareIntervals}
\title{Definisce il dominio del prodotto in termini di intervalli.}
\usage{
compareIntervals(x, y)
}
\arguments{
\item{x}{dominio della prima funzione (n1 intervalli)}

\item{y}{dominio della seconda funzione (n2 intervalli)}
}
\value{
Il dominio del prodotto
}
\description{
Al momenti gli intervalli sono aperti caratterizzati da  un numero pari di numeri ordinati.
}
\examples{
compareIntervals(c(1,2,3,4),c(2,2.4,3,6))
}

