% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/classifyWetlands.R
\name{classifyWetlands}
\alias{classifyWetlands}
\title{Classify wetlands (really!) using the wetlands layer set as input and a either LCC05 or LCC2010}
\usage{
classifyWetlands(
  LCC,
  wetLayerInput,
  pathData,
  studyArea = NULL,
  RasterToMatch = NULL
)
}
\arguments{
\item{LCC}{numeric. 2005 (250m resolution) or 2010 (30m resolution) landcover  rasters.}

\item{wetLayerInput}{Which wetland should be used as input (raster with projection).
It was originally designed to work with the DUCKS Unlimited Waterland
layer (30m) but can work with any waterlayers that have the following code:
possibleLakes == 0
water bodies == 1
wetlands == 2
uplands > 2}

\item{pathData}{Where the layers are stored and/or should be saved to}

\item{studyArea}{If the layer should be cropped and masked after classification. Optional.}

\item{RasterToMatch}{raster to match the new layer after classification to. Optional.}
}
\value{
As with \code{archivist::cache}, returns the value of the
function call or the cached version (i.e., the result from a previous call
to this same cached function with identical arguments).
}
\description{
Classify wetlands (really!) using the wetlands layer set as input and a either LCC05 or LCC2010
}
\author{
Tati Micheletti
}
