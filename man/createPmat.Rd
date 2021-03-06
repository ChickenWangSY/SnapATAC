% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/createPmat.R
\name{createPmat}
\alias{createPmat}
\title{Create Cell-by-Peak Matrix}
\usage{
createPmat(obj, peaks, ncell.chunk = 20, do.par = TRUE, num.cores = 1)
}
\arguments{
\item{obj}{A snap object.}

\item{peaks}{A GRanges object contains the peaks}

\item{ncell.chunk}{A numeric class that indicates the number of cells to calculate per processing core [20].}

\item{do.par}{A logical variable indicates if run this using multiple processors [TRUE].}

\item{num.cores}{Number of processers to use [1].}
}
\value{
Returns a snap objects contains cell-by-peak matrix
}
\description{
This function takes a snap object and peak list as input and creates cell-by-peak matrix
}
