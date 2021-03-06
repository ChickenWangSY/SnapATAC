% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/runClusters.R
\name{runCluster}
\alias{runCluster}
\title{Find Clusters Using Louvain/Leiden Algorithm}
\usage{
runCluster(obj, tmp.folder, louvain.lib, resolution, seed.use)
}
\arguments{
\item{obj}{A snap object.}

\item{tmp.folder}{Directory to store temporary files.}

\item{louvain.lib}{Louvain implementation method to use ["R-igraph", "leiden"].
"R-igraph" uses "cluster_louvain" implemented by igraph package in R. "Leiden" uses "Leiden" algorithm for finding clusters (recommanded). 
Leiden allows for multiple resolutions, but requires "leiden" to be pre-installed seperately. see how to install "leiden" (https://github.com/TomKellyGenetics/leiden).}

\item{resolution}{A numeric value that indicates the resolution for louvain clustering [1].}

\item{seed.use}{Random seed [10].}
}
\value{
Returns a snap obj with the cluster stored in obj@cluster
}
\description{
Using the constructed knn graph returned by function runKNN, we next applied community finding algorithm 
to identify the ‘communities’ in the resulting graph which represents groups of
cells sharing similar accessibility profiles.
}
\examples{
data(demo.sp);
demo.sp = runCluster(obj=demo.sp, tmp.folder=tempdir(), louvain.lib="R-igraph");

}
