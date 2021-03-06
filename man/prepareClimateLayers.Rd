% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/prepareClimateLayers.R
\name{prepareClimateLayers}
\alias{prepareClimateLayers}
\title{Function to create raster stack for climate sensitive models}
\usage{
prepareClimateLayers(
  pathInputs = NULL,
  variables = NULL,
  years = NULL,
  GDriveFolder = NULL,
  climateFilePath = NULL,
  fileResolution = NULL,
  authEmail = NULL,
  RCP = NULL,
  climateModel = NULL,
  ensemble = NULL,
  rasterToMatch = NULL,
  studyArea = NULL,
  model = NULL,
  doughtMonths = 4:9,
  returnCalculatedLayersForFireSense = FALSE,
  yearsWithClimateProjections = 2011:2100,
  overwrite = FALSE,
  overwriteOriginalData = FALSE
)
}
\arguments{
\item{pathInputs}{Default NULL (TODO: description needed)}

\item{variables}{Character string of the variables to be used, i.e. c("PPT", "Tmax").}

\item{years}{Character string of the years to use. i.e. c(2011:20100).}

\item{GDriveFolder}{Character string of the folder in google drive to upload the layers to.
Handy for shared projects.}

\item{climateFilePath}{Character string of the path to the climate file in google drive
(i.e. "https://drive.google.com/open?id=1wcgytGJmfZGaapZZ9M9blfGa-45eLVWE" for
`Canada3ArcMinute.7z`)}

\item{fileResolution}{Character string of the for naming purposes (i.e. `3ArcMinute`)}

\item{authEmail}{Character string of googledrive e.mail for authentication for non-interactive use.}

\item{RCP}{Character string of RCP to be used (i.e. `45`)}

\item{climateModel}{Character string of climate mode to be used (i.e. `CanESM2`)}

\item{ensemble}{Character string of climate ensemble to be used (i.e. `r11i1p1`)}

\item{rasterToMatch}{RasterLayer template for these layers to match}

\item{studyArea}{shapefile of study area}

\item{model}{For naming and shortcut for variables: ie. `birds` or `fireSense`.
If you wanna provide the variables to be produced, don't use birds or fireSense here.}

\item{doughtMonths}{numeric. Months for fireSense to calculate MonthDoughtCode (MDC) i.e. `4:9`.}

\item{returnCalculatedLayersForFireSense}{Logical. Should it calculate MDC (TRUE) or return the original variables (FALSE)? Default is FALSE.}

\item{yearsWithClimateProjections}{Numeric. The user can pass the years that have climate projection in the data. Default to 2011:2100.}

\item{overwrite}{logical. Default to FALSE. Should the layers be overwritten if exist?}

\item{overwriteOriginalData}{logical. Default to FALSE. If changes happen in the original layer
(the one provided in climateFilePath),
set this to TRUE to overwrite the zip files downloaded.}
}
\value{
This function returns a list of all years, with each year being the local path for the raster stack that contains all variables
}
\description{
Designed primarily for NWT project, but somewhat flexible.
}
\author{
Tati Micheletti
}
