#' TargetingPresetService
#' 
#' Service for interacting with Targeting Presets.
#' 
#' getTargetingPresetsByStatement
#' 
#' Gets a TargetingPresetPage of TargetingPreset objects that satisfy the given Statement query. The following fields are supported for filtering: 
#' \itemize{
#'   \item{id}
#'   \item{name}
#' }
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201905/TargetingPresetService#getTargetingPresetsByStatement}{Google Documentation for getTargetingPresetsByStatement}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getTargetingPresetsByStatementResponse 
#' @examples
#' \dontrun{
#'  dat <- list(filterStatement=list('query'="WHERE status='ACTIVE'")) 
#'  res <- dfp_getTargetingPresetsByStatement(dat)
#' }
#' @export
dfp_getTargetingPresetsByStatement <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='TargetingPresetService', root_name='getTargetingPresetsByStatement', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='getTargetingPresetsByStatementResponse', as_df=as_df)
  return(result)
}
#' 
