% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ggcorplot.R
\name{ezLev}
\alias{ezLev}
\title{Helper function for levels, from the ez package}
\usage{
ezLev(x, new_order)
}
\arguments{
\item{x}{factor}

\item{new_order}{The order you want them in}
}
\description{
Helper function for levels, from the ez package
}
\examples{
x <- factor(c("A", "B", "C"))
ezLev(x, c(3,1,2))
}
\keyword{factors}
