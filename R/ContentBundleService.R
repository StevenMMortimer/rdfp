#' ContentBundleService
#' 
#' Provides methods for creating, updating and retrieving ContentBundle
#' objects.
#' A ContentBundle is a grouping of Content that match filter
#' rules as well as taking into account explicitly included or excluded
#' Content.
#' 
#' createContentBundles
#' 
#' Creates new ContentBundle objects.
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201811/ContentBundleService#createContentBundles}{Google Documentation for createContentBundles}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a createContentBundlesResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_createContentBundles(request_data)
#' }
#' @export
dfp_createContentBundles <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='ContentBundleService', root_name='createContentBundles', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='createContentBundlesResponse', as_df=as_df)
  return(result)
}
#' 
#' getContentBundlesByStatement
#' 
#' Gets a ContentBundlePage of ContentBundle objects that satisfy the given Statement query. The following fields are supported for filtering: 
#' \itemize{
#'   \item{id}
#'   \item{name}
#'   \item{status}
#' }
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201811/ContentBundleService#getContentBundlesByStatement}{Google Documentation for getContentBundlesByStatement}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getContentBundlesByStatementResponse 
#' @examples
#' \dontrun{
#'  dat <- list(filterStatement=list('query'="WHERE status='ACTIVE'")) 
#'  res <- dfp_getContentBundlesByStatement(dat)
#' }
#' @export
dfp_getContentBundlesByStatement <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='ContentBundleService', root_name='getContentBundlesByStatement', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='getContentBundlesByStatementResponse', as_df=as_df)
  return(result)
}
#' 
#' performContentBundleAction
#' 
#' Performs actions on ContentBundle objects that match the given Statement query.
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201811/ContentBundleService#performContentBundleAction}{Google Documentation for performContentBundleAction}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a performContentBundleActionResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_performContentBundleAction(request_data)
#' }
#' @export
dfp_performContentBundleAction <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='ContentBundleService', root_name='performContentBundleAction', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='performContentBundleActionResponse', as_df=as_df)
  return(result)
}
#' 
#' updateContentBundles
#' 
#' Updates the specified ContentBundle objects.
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201811/ContentBundleService#updateContentBundles}{Google Documentation for updateContentBundles}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a updateContentBundlesResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_updateContentBundles(request_data)
#' }
#' @export
dfp_updateContentBundles <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='ContentBundleService', root_name='updateContentBundles', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='updateContentBundlesResponse', as_df=as_df)
  return(result)
}
#' 
