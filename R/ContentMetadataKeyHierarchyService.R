#' ContentMetadataKeyHierarchyService
#' 
#' Provides methods for creating, updating, and retrieving
#' ContentMetadataKeyHierarchy objects.
#' 
#' createContentMetadataKeyHierarchies
#' 
#' Creates new ContentMetadataKeyHierarchy objects.
#' The following fields are required: 
#' \itemize{
#'   \item{id}
#'   \item{name}
#'   \item{hierarchyLevels}
#' } 
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201802/ContentMetadataKeyHierarchyService#createContentMetadataKeyHierarchies}{Google Documentation for createContentMetadataKeyHierarchies}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a createContentMetadataKeyHierarchiesResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_createContentMetadataKeyHierarchies(request_data)
#' }
#' @export
dfp_createContentMetadataKeyHierarchies <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='ContentMetadataKeyHierarchyService', root_name='createContentMetadataKeyHierarchies', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='createContentMetadataKeyHierarchiesResponse', as_df=as_df)
  return(result)
}
#' 
#' getContentMetadataKeyHierarchiesByStatement
#' 
#' Gets a ContentMetadataKeyHierarchyPage of ContentMetadataKeyHierarchy objects that satisfy the given Statement query. The following fields are supported for filtering: 
#' \itemize{
#'   \item{id}
#'   \item{name}
#'   \item{status}
#' }
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201802/ContentMetadataKeyHierarchyService#getContentMetadataKeyHierarchiesByStatement}{Google Documentation for getContentMetadataKeyHierarchiesByStatement}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getContentMetadataKeyHierarchiesByStatementResponse 
#' @examples
#' \dontrun{
#'  dat <- list(filterStatement=list('query'="WHERE status='ACTIVE'")) 
#'  res <- dfp_getContentMetadataKeyHierarchiesByStatement(dat)
#' }
#' @export
dfp_getContentMetadataKeyHierarchiesByStatement <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='ContentMetadataKeyHierarchyService', root_name='getContentMetadataKeyHierarchiesByStatement', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='getContentMetadataKeyHierarchiesByStatementResponse', as_df=as_df)
  return(result)
}
#' 
#' performContentMetadataKeyHierarchyAction
#' 
#' Performs actions on ContentMetadataKeyHierarchy objects that match the given \{@@link Statement query\}.
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201802/ContentMetadataKeyHierarchyService#performContentMetadataKeyHierarchyAction}{Google Documentation for performContentMetadataKeyHierarchyAction}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a performContentMetadataKeyHierarchyActionResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_performContentMetadataKeyHierarchyAction(request_data)
#' }
#' @export
dfp_performContentMetadataKeyHierarchyAction <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='ContentMetadataKeyHierarchyService', root_name='performContentMetadataKeyHierarchyAction', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='performContentMetadataKeyHierarchyActionResponse', as_df=as_df)
  return(result)
}
#' 
#' updateContentMetadataKeyHierarchies
#' 
#' Updates the specified ContentMetadataKeyHierarchy objects.
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201802/ContentMetadataKeyHierarchyService#updateContentMetadataKeyHierarchies}{Google Documentation for updateContentMetadataKeyHierarchies}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a updateContentMetadataKeyHierarchiesResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_updateContentMetadataKeyHierarchies(request_data)
#' }
#' @export
dfp_updateContentMetadataKeyHierarchies <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='ContentMetadataKeyHierarchyService', root_name='updateContentMetadataKeyHierarchies', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='updateContentMetadataKeyHierarchiesResponse', as_df=as_df)
  return(result)
}
#' 
