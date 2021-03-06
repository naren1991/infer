% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/wrappers.R
\name{chisq_test}
\alias{chisq_test}
\title{Tidy chi-squared test}
\usage{
chisq_test(data, formula, ...)
}
\arguments{
\item{data}{A data frame that can be coerced into a \link[tibble:tibble]{tibble}.}

\item{formula}{A formula with the response variable on the left and the
explanatory on the right.}

\item{...}{Additional arguments for \link[stats:chisq.test]{chisq.test()}.}
}
\description{
A tidier version of \link[stats:chisq.test]{chisq.test()} for goodness of fit
tests and tests of independence.
}
\examples{
# chisq test for comparing number of cylinders against automatic/manual
mtcars \%>\%
  dplyr::mutate(cyl = factor(cyl), am = factor(am)) \%>\%
  chisq_test(cyl ~ am)

}
