% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/clustering_functions.R
\name{summary_stat}
\alias{summary_stat}
\title{Descriptive statistics for Poisson kernel-based clustering results.}
\usage{
summary_stat(object, k, true_label = NULL)
}
\arguments{
\item{object}{Object of class \code{pkbc}.}

\item{k}{Number of clusters to be used.}

\item{true_label}{Vector of true memberships to clusters (default: NULL).}
}
\value{
List with computed descriptive statistics for each variable. For d > 3, the complete results from the \code{PcaLocantore} function (package \code{rrcov}) are also returned.
}
\description{
Method for objects of class \code{pkbc} which computes and displays some descriptive for each variable with respect to the detected groups. It also generates a plot of data points colored by the final membership.
}
\details{
The function computes mean, standard deviation, median, inter-quantile range, minimum and maximum for each variable in the data set given the final membership assigned by the clustering algorithm. If dimension is equal to 2 or 3, points are displayed on the circle and sphere, respectively. If dimension if greater than 3, the spherical Principal Component procedure proposed by Locantore et al., (1999) is applied for dimensionality reduction and the first three principal components are normalized and displayed on the sphere.
}
\examples{
#We generate three samples of 100 observations from 3-dimensional
#Poisson kernel-based densities with rho=0.8 and different mean directions
size <- 100
groups<-c(rep(1, size), rep(2, size),rep(3,size))
rho=0.8
set.seed(081423)
data1<-rpkb(size, c(1,0,0),rho,method='rejvmf')
data2<-rpkb(size, c(0,1,0),rho,method='rejvmf')
data3<-rpkb(size, c(-1,0,0),rho,method='rejvmf')
data<-rbind(data1$x,data2$x, data3$x)

#Perform the clustering algorithm
pkbc_res<- pkbc(data, 3)
summary_stat(pkbc_res, 3)

}
\references{
Locantore, N., Marron, J.S., Simpson, D.G. et al. (1999) "Robust principal component
analysis for functional data." Test 8, 1–73. https://doi.org/10.1007/BF02595862
}
