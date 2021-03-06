% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/install_magpie_units.R
\name{install_magpie_units}
\alias{install_magpie_units}
\title{install_magpie_units (!experimental!)}
\usage{
install_magpie_units(x = NULL)
}
\arguments{
\item{x}{Can be a character of length one, a magpie object, or NULL (default). If a 
character is given, it will be temporarily installed (for the current R session) to the 
units database if it isn't already. If a magpie object, then the same will be done for 
the metadata units field. If NULL, then a set of frequently used units will be installed
to the database (also temporary).}
}
\value{
If x is a character, the newly installed units object. 
If x is a magpie object, a magpie object with an updated units metadata field. 
If x is NULL, no output is returned. 
Note that the udunits2 package does not accept units which start or end with a number. 
The current general work-around is to add a '_' before or after the unit as necessary. 
Some specific cases are handled differently, e.g. 'USD_2003' becomes 'y2003_USD'.
}
\description{
This function is currently experimental and non-functional by default! To activate it,
set withMetadata(TRUE).
}
\details{
Please install the development version of the R-units package. The devtools or remotes 
package is a prerequisite for this - e.g. remotes::install_github("r-quantities/units")

The purpose of this function is to define common units used in MAgPIE and REMIND data
for parseability by the udunits2 and units packages which handle unit conversions 
and compatibility checks.
}
\seealso{
\code{\link{units.magpie}}, \code{\link[units]{install_symbolic_unit}}, 
\code{\link[units]{install_conversion_constant}}
}
\author{
Stephen Bi
}
