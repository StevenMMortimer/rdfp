% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/LabelService.R
\name{dfp_getLabelsByStatement}
\alias{dfp_getLabelsByStatement}
\title{getLabelsByStatement}
\usage{
dfp_getLabelsByStatement(request_data, as_df = TRUE, verbose = FALSE)
}
\arguments{
\item{request_data}{a \code{list} or \code{data.frame} of data elements
to be formatted for a SOAP
request (XML format, but passed as character string)}

\item{as_df}{a boolean indicating whether to attempt to parse the result into
a \code{data.frame}}

\item{verbose}{a boolean indicating whether to print the service URL and POSTed XML}
}
\value{
a \code{data.frame} or \code{list} containing all the elements of a getLabelsByStatementResponse
}
\description{
Gets a LabelPage of Label objects that satisfy the given Statement query. The following fields are supported for filtering: 
\itemize{
  \item{id}
  \item{type}
  \item{name}
  \item{description}
  \item{isActive}
}
}
\examples{
\dontrun{
 dat <- list(filterStatement=list('query'="WHERE status='ACTIVE'")) 
 res <- dfp_getLabelsByStatement(dat)
}
}
\seealso{
\href{https://developers.google.com/ad-manager/api/reference/v201905/LabelService#getLabelsByStatement}{Google Documentation for getLabelsByStatement}
}
