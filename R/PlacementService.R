#' PlacementService
#' 
#' Provides methods for creating, updating and retrieving Placement objects.
#'
#' You can use a placement to group ad units. For example, you might have a
#' placement that focuses on sports sites, which may be spread across
#' different branches of your inventory. You might also have a "fire sale"
#' placement that includes ad units that have not been selling and are
#' consequently priced very attractively.
#' 
#' createPlacements
#' 
#' Creates new Placement objects.
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201802/PlacementService#createPlacements}{Google Documentation for createPlacements}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a createPlacementsResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_createPlacements(request_data)
#' }
#' @export
dfp_createPlacements <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='PlacementService', root_name='createPlacements', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='createPlacementsResponse', as_df=as_df)
  return(result)
}
#' 
#' getPlacementsByStatement
#' 
#' Gets a PlacementPage of Placement objects that satisfy the given Statement query. The following fields are supported for filtering: 
#' \itemize{
#'   \item{description}
#'   \item{id}
#'   \item{isAdSenseTargetingEnabled}
#'   \item{name}
#'   \item{placementCode}
#'   \item{status}
#'   \item{lastModifiedDateTime}
#' }
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201802/PlacementService#getPlacementsByStatement}{Google Documentation for getPlacementsByStatement}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getPlacementsByStatementResponse 
#' @examples
#' \dontrun{
#'  dat <- list(filterStatement=list('query'="WHERE status='ACTIVE'")) 
#'  res <- dfp_getPlacementsByStatement(dat)
#' }
#' @export
dfp_getPlacementsByStatement <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='PlacementService', root_name='getPlacementsByStatement', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='getPlacementsByStatementResponse', as_df=as_df)
  return(result)
}
#' 
#' performPlacementAction
#' 
#' Performs actions on Placement objects that match the given Statement query.
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201802/PlacementService#performPlacementAction}{Google Documentation for performPlacementAction}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a performPlacementActionResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_performPlacementAction(request_data)
#' }
#' @export
dfp_performPlacementAction <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='PlacementService', root_name='performPlacementAction', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='performPlacementActionResponse', as_df=as_df)
  return(result)
}
#' 
#' updatePlacements
#' 
#' Updates the specified Placement objects.
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201802/PlacementService#updatePlacements}{Google Documentation for updatePlacements}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a updatePlacementsResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_updatePlacements(request_data)
#' }
#' @export
dfp_updatePlacements <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='PlacementService', root_name='updatePlacements', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='updatePlacementsResponse', as_df=as_df)
  return(result)
}
#' 
