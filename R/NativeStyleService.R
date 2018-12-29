#' NativeStyleService
#' 
#' Provides methods for creating and retrieving NativeStyle objects.
#' 
#' createNativeStyles
#' 
#' Creates new NativeStyle objects.
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201811/NativeStyleService#createNativeStyles}{Google Documentation for createNativeStyles}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a createNativeStylesResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_createNativeStyles(request_data)
#' }
#' @export
dfp_createNativeStyles <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='NativeStyleService', root_name='createNativeStyles', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='createNativeStylesResponse', as_df=as_df)
  return(result)
}
#' 
#' getNativeStylesByStatement
#' 
#' Gets a NativeStylePage NativeStylePage of NativeStyle objects that satisfy the given Statement. The following fields are supported for filtering: 
#' \itemize{
#'   \item{id}
#'   \item{name}
#' }
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201811/NativeStyleService#getNativeStylesByStatement}{Google Documentation for getNativeStylesByStatement}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getNativeStylesByStatementResponse 
#' @examples
#' \dontrun{
#'  dat <- list(filterStatement=list('query'="WHERE status='ACTIVE'")) 
#'  res <- dfp_getNativeStylesByStatement(dat)
#' }
#' @export
dfp_getNativeStylesByStatement <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='NativeStyleService', root_name='getNativeStylesByStatement', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='getNativeStylesByStatementResponse', as_df=as_df)
  return(result)
}
#' 
#' performNativeStyleAction
#' 
#' Performs actions on NativeStyle native styles that match the given Statement.
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201811/NativeStyleService#performNativeStyleAction}{Google Documentation for performNativeStyleAction}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a performNativeStyleActionResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_performNativeStyleAction(request_data)
#' }
#' @export
dfp_performNativeStyleAction <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='NativeStyleService', root_name='performNativeStyleAction', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='performNativeStyleActionResponse', as_df=as_df)
  return(result)
}
#' 
#' updateNativeStyles
#' 
#' Updates the specified NativeStyle objects.
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201811/NativeStyleService#updateNativeStyles}{Google Documentation for updateNativeStyles}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a updateNativeStylesResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_updateNativeStyles(request_data)
#' }
#' @export
dfp_updateNativeStyles <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='NativeStyleService', root_name='updateNativeStyles', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='updateNativeStylesResponse', as_df=as_df)
  return(result)
}
#' 
