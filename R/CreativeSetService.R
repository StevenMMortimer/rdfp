#' CreativeSetService
#' 
#' Provides methods for adding, updating and retrieving CreativeSet objects.
#' 
#' createCreativeSet
#' 
#' Creates a new CreativeSet.
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201802/CreativeSetService#createCreativeSet}{Google Documentation for createCreativeSet}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a createCreativeSetResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_createCreativeSet(request_data)
#' }
#' @export
dfp_createCreativeSet <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='CreativeSetService', root_name='createCreativeSet', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='createCreativeSetResponse', as_df=as_df)
  return(result)
}
#' 
#' getCreativeSetsByStatement
#' 
#' Gets a CreativeSetPage of CreativeSet objects that satisfy the given Statement query. The following fields are supported for filtering: 
#' \itemize{
#'   \item{id}
#'   \item{name}
#'   \item{masterCreativeId}
#'   \item{lastModifiedDateTime}
#' }
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201802/CreativeSetService#getCreativeSetsByStatement}{Google Documentation for getCreativeSetsByStatement}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getCreativeSetsByStatementResponse 
#' @examples
#' \dontrun{
#'  dat <- list(filterStatement=list('query'="WHERE status='ACTIVE'")) 
#'  res <- dfp_getCreativeSetsByStatement(dat)
#' }
#' @export
dfp_getCreativeSetsByStatement <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='CreativeSetService', root_name='getCreativeSetsByStatement', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='getCreativeSetsByStatementResponse', as_df=as_df)
  return(result)
}
#' 
#' updateCreativeSet
#' 
#' Updates the specified CreativeSet.
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201802/CreativeSetService#updateCreativeSet}{Google Documentation for updateCreativeSet}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a updateCreativeSetResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_updateCreativeSet(request_data)
#' }
#' @export
dfp_updateCreativeSet <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='CreativeSetService', root_name='updateCreativeSet', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='updateCreativeSetResponse', as_df=as_df)
  return(result)
}
#' 
