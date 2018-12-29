#' LineItemTemplateService
#' 
#' Provides methods for creating, updating and retrieving LineItemTemplate
#' objects.
#' 
#' getLineItemTemplatesByStatement
#' 
#' Gets a LineItemTemplatePage of LineItemTemplate objects that satisfy the given Statement query. The following fields are supported for filtering: 
#' \itemize{
#'   \item{id}
#' }
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201811/LineItemTemplateService#getLineItemTemplatesByStatement}{Google Documentation for getLineItemTemplatesByStatement}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getLineItemTemplatesByStatementResponse 
#' @examples
#' \dontrun{
#'  dat <- list(filterStatement=list('query'="WHERE status='ACTIVE'")) 
#'  res <- dfp_getLineItemTemplatesByStatement(dat)
#' }
#' @export
dfp_getLineItemTemplatesByStatement <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='LineItemTemplateService', root_name='getLineItemTemplatesByStatement', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='getLineItemTemplatesByStatementResponse', as_df=as_df)
  return(result)
}
#' 
