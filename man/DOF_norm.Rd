% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utility.R
\name{DOF_norm}
\alias{DOF_norm}
\title{Degrees of freedom (DOF) for the Normal kernel}
\usage{
DOF_norm(Sigma_h, V)
}
\arguments{
\item{Sigma_h}{covariance matrix of the gaussian kernel}

\item{V}{Covariance matrix of the tested distribution G}
}
\value{
a list containing the DOF and the coefficient c of the asymptotic
distribution
}
\description{
Compute the Degrees of Freedom (DOF) of the normal Kernel centered with
respect to the standard normal distribution, given the dimension d and the
bandwidth parameter h.
}
\keyword{internal}
