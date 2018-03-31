#' InventoryService
#' 
#' Provides operations for creating, updating and retrieving AdUnit objects.
#'
#' Line items connect a creative with its associated ad unit through
#' targeting.
#' An ad unit represents a piece of inventory within a
#' publisher. It contains all the settings that need to be associated with the
#' inventory in order to serve ads. For example, the ad unit contains creative
#' size restrictions and AdSense settings.
#' 
#' createAdUnits
#' 
#' Creates new AdUnit objects.
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201802/InventoryService#createAdUnits}{Google Documentation for createAdUnits}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a createAdUnitsResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_createAdUnits(request_data)
#' }
#' @export
dfp_createAdUnits <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='InventoryService', root_name='createAdUnits', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='createAdUnitsResponse', as_df=as_df)
  return(result)
}
#' 
#' getAdUnitSizesByStatement
#' 
#' Gets a set of AdUnitSize objects that satisfy the given Statement query. The following fields are supported for filtering: 
#' \itemize{
#'   \item{targetPlatform}
#' }
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201802/InventoryService#getAdUnitSizesByStatement}{Google Documentation for getAdUnitSizesByStatement}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getAdUnitSizesByStatementResponse 
#' @examples
#' \dontrun{
#'  dat <- list(filterStatement=list('query'="WHERE status='ACTIVE'")) 
#'  res <- dfp_getAdUnitSizesByStatement(dat)
#' }
#' @export
dfp_getAdUnitSizesByStatement <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='InventoryService', root_name='getAdUnitSizesByStatement', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='getAdUnitSizesByStatementResponse', as_df=as_df)
  return(result)
}
#' 
#' getAdUnitsByStatement
#' 
#' Gets a AdUnitPage of AdUnit objects that satisfy the given Statement query. The following fields are supported for filtering: 
#' \itemize{
#'   \item{adUnitCode}
#'   \item{id}
#'   \item{name}
#'   \item{parentId}
#'   \item{status}
#'   \item{lastModifiedDateTime}
#' }
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201802/InventoryService#getAdUnitsByStatement}{Google Documentation for getAdUnitsByStatement}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getAdUnitsByStatementResponse 
#' @examples
#' \dontrun{
#'  dat <- list(filterStatement=list('query'="WHERE status='ACTIVE'")) 
#'  res <- dfp_getAdUnitsByStatement(dat)
#' }
#' @export
dfp_getAdUnitsByStatement <- function(request_data, as_df=FALSE, verbose=FALSE){
  request_body <- form_request_body(service='InventoryService', root_name='getAdUnitsByStatement', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='getAdUnitsByStatementResponse', as_df=as_df)
  return(result)
}
#' 
#' performAdUnitAction
#' 
#' Performs actions on AdUnit objects that match the given Statement query.
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201802/InventoryService#performAdUnitAction}{Google Documentation for performAdUnitAction}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a performAdUnitActionResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_performAdUnitAction(request_data)
#' }
#' @export
dfp_performAdUnitAction <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='InventoryService', root_name='performAdUnitAction', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='performAdUnitActionResponse', as_df=as_df)
  return(result)
}
#' 
#' updateAdUnits
#' 
#' Updates the specified AdUnit objects.
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201802/InventoryService#updateAdUnits}{Google Documentation for updateAdUnits}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a updateAdUnitsResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_updateAdUnits(request_data)
#' }
#' @export
dfp_updateAdUnits <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='InventoryService', root_name='updateAdUnits', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='updateAdUnitsResponse', as_df=as_df)
  return(result)
}
#' 
