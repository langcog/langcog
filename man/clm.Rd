% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/clm.R
\name{clm}
\alias{clm}
\title{Fitting linear models under constraints}
\usage{
clm(formula, data, ...)
}
\arguments{
\item{formula}{An object of class "\code{\link[stats]{formula}}" (or one that
can be coerced to that class): a symbolic description of the model to be
fitted.}

\item{data}{A data frame (or object coercible by
\code{\link[base]{as.data.frame}} to a data frame) containing the variables
in the model.}

\item{...}{Further arguments passed to or from other methods.}
}
\value{
\code{clm} returns an object of \code{\link[base]{class}}
  "\code{clm}". An object of class "\code{clm}" is a list containing at least
  the following components:
  \tabular{ll}{
    \code{solution} \tab a vector of coefficients for the constrained
                         solution \cr
    \code{unconstrined.solution} \tab a vector of coefficients for the
                         unconstrained solution \cr
    \code{formula} \tab the formula passed \code{clm} \cr
  }
}
\description{
\code{clm} (constrained linear model) is used to fit linear models under
constraints on the coefficients. It uses quadratic programming to run a
regression on data with a specified formula, subject to the constraint that
the coefficients of the regression sum to 1 (in the future could support
arbitrary constraints on the coefficients).
}
\examples{
## Annette Dobson (1990) "An Introduction to Generalized Linear Models".
## Page 9: Plant Weight Data.
ctl <- c(4.17,5.58,5.18,6.11,4.50,4.61,5.17,4.53,5.33,5.14)
trt <- c(4.81,4.17,4.41,3.59,5.87,3.83,6.03,4.89,4.32,4.69)
df <- data.frame(weight = c(ctl, trt), group = c(rep(0, 10), rep(1, 10)))
lm.D9 <- clm(weight ~ group, df)
}
\seealso{
\code{\link[stats]{lm}}, \code{\link[quadprog]{solve.QP}}
}
