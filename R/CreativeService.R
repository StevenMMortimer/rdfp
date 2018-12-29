#' CreativeService
#' 
#' Provides methods for adding, updating and retrieving Creative objects.
#'
#' For a creative to run, it must be associated with a LineItem managed by
#' the LineItemCreativeAssociationService.#' Read more about creatives on
#' the <a href="https://support.google.com/dfp_premium/answer/3185155">DFP
#' Help Center</a>.
#' 
#' createCreatives
#' 
#' Creates new Creative objects.
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201811/CreativeService#createCreatives}{Google Documentation for createCreatives}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a createCreativesResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_createCreatives(request_data)
#' }
#' @export
dfp_createCreatives <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='CreativeService', root_name='createCreatives', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='createCreativesResponse', as_df=as_df)
  return(result)
}
#' 
#' getCreativesByStatement
#' 
#' Gets a CreativePage of Creative objects that satisfy the given Statement query. The following fields are supported for filtering: 
#' \itemize{
#'   \item{id}
#'   \item{name}
#'   \item{advertiserId}
#'   \item{width}
#'   \item{height}
#'   \item{lastModifiedDateTime}
#' }
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201811/CreativeService#getCreativesByStatement}{Google Documentation for getCreativesByStatement}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getCreativesByStatementResponse 
#' @examples
#' \dontrun{
#'  dat <- list(filterStatement=list('query'="WHERE status='ACTIVE'")) 
#'  res <- dfp_getCreativesByStatement(dat)
#' }
#' @export
dfp_getCreativesByStatement <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='CreativeService', root_name='getCreativesByStatement', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='getCreativesByStatementResponse', as_df=as_df)
  return(result)
}
#' 
#' updateCreatives
#' 
#' Updates the specified Creative objects.
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201811/CreativeService#updateCreatives}{Google Documentation for updateCreatives}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a updateCreativesResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_updateCreatives(request_data)
#' }
#' @export
dfp_updateCreatives <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='CreativeService', root_name='updateCreatives', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='updateCreativesResponse', as_df=as_df)
  return(result)
}
#' 
