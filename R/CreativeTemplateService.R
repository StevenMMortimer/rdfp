#' CreativeTemplateService
#' 
#' Provides methods for retrieving CreativeTemplate objects.
#' 
#' getCreativeTemplatesByStatement
#' 
#' Gets a CreativeTemplatePage of CreativeTemplate objects that satisfy the given Statement query. The following fields are supported for filtering: 
#' \itemize{
#'   \item{id}
#'   \item{name}
#'   \item{type}
#'   \item{status}
#' }
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201905/CreativeTemplateService#getCreativeTemplatesByStatement}{Google Documentation for getCreativeTemplatesByStatement}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getCreativeTemplatesByStatementResponse 
#' @examples
#' \dontrun{
#'  dat <- list(filterStatement=list('query'="WHERE status='ACTIVE'")) 
#'  res <- dfp_getCreativeTemplatesByStatement(dat)
#' }

#' @export
dfp_getCreativeTemplatesByStatement <- function(request_data, as_df=FALSE, verbose=FALSE){
  request_body <- form_request_body(service='CreativeTemplateService', root_name='getCreativeTemplatesByStatement', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='getCreativeTemplatesByStatementResponse', as_df=as_df)
  return(result)
}
#' 
