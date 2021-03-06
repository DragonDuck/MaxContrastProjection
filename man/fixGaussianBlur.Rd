% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/projection.R
\name{fixGaussianBlur}
\alias{fixGaussianBlur}
\title{Remove Gaussian Blur}
\usage{
fixGaussianBlur(imageStack, indexMap, blur.size, validate = TRUE)
}
\arguments{
\item{imageStack}{A numeric 3D array-like which should ne projected. The 
dimensions should be (spatial_1, spatial_2, numer_of_images)}

\item{indexMap}{A custom index map according to which the image stack is 
projected. The values must be integers between 1 and the number of layers 
in \code{imageStack}}

\item{blur.size}{An integer indicating the radius of the gaussian blur. The 
total diameter of the brush is defined as 2*blur.size+1, meaning that a 
blur.size' value of 0 will result in a 1x1 pixel brush.}

\item{validate}{A boolean indicating if the function arguments should be 
validated. This is only used to marginally speed up internal calls to 
functions and has no bearing on the actual functionality of the method.}
}
\value{
An index map with the corrected values around the foreground objects
}
\description{
Fix the contrast projection error around very bright objects on
a dark background
}
\details{
Bright objects on dark backgrounds cause projection artefacts, a 
sort of gaussian "shadow" of the object. This is due to the unfocused images
having a higher  contrast in the regions directly outside of bright 
foreground objects than the actual background. This leads to ring shapes 
around the bright foreground which need to be removed. This is done by 
detecting bright objects with a primitive, intensity-based segmentation 
method (Otsu-thresholding) and determining a region around the foreground 
objects in which the gaussian blurring is visible. In this region, instead 
of using the determined z-indices for the projection, a Voronoi propagation 
starting from the closest foreground pixels is performed to ensure that the 
same z-layer is used for the nearby background as for the foreground.
}
\examples{
print(fixGaussianBlur)
}
\author{
Jan Sauer
}
\keyword{array}
