#' @import EBImage 
#' @import methods 
#' @import stats
NULL

#' A sample segment of an organoid
#' @name cells
#' @docType data
#' @author Jan Sauer
#' @keywords data
NULL

#' MaxContrastProjection: A package for performing z-projections of image stacks
#'
#' The package MaxContrastProjection provides functions to perform the common intensity projections (max, min, etc.) as well as a maximum contrast projection we introduce here.
#'
#' @docType package
#' @name MaxContrastProjection
#' @examples 
#' data(cells)
#' proj = contrastProjection(imageStack = cells, w_x = 15, smoothing = 5)
NULL

# Global Variables
.pkgenv = new.env(parent=emptyenv())
.pkgenv$.BRUSH_SHAPES = c("box", "disc")
.pkgenv$.PROJ_TYPES = c("max", "min", "mean", "median", "sd", "sum")
