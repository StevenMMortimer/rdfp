#' SuggestedAdUnitService
#' 
#' This service provides operations for retrieving and approving
#' SuggestedAdUnit objects.
#' Publishers may create ad tags that lack a
#' corresponding ad unit defined in DFP, in order to gather information about
#' potential ads without needing to create dummy ad units and make them
#' available for targeting in line items. Any undefined ad unit to receive
#' more than ten serving requests in the past week is treated as a 'suggested
#' ad unit'. These can be queried by the client and selectively approved.
#' Approval causes a new ad unit to be created based on the suggested ad unit.
#' Unapproved suggested ad units cease to exist whenever their corresponding
#' ad tag has been served fewer than ten times in the past seven days.
#' This
#' service is only available to Premium publishers. Before use, suggested ad
#' units must be enabled for the client's network. This can be done in the UI:
#' in the Inventory tab, click "Network settings" in the left-hand panel, then
#' enable the checkbox "Get suggestions for new ad units." If suggested ad
#' units are not enabled, then #getSuggestedAdUnitsByStatement will always
#' return an empty page.
#' 
#' getSuggestedAdUnitsByStatement
#' 
#' Gets a SuggestedAdUnitPage of SuggestedAdUnit objects that satisfy the filter query. There is a system-enforced limit of 1000 on the number of suggested ad units that are suggested at any one time.  <strong>Note:</strong> After API version 201311, the id field will only be numerical. 
#' \itemize{
#'   \item{id}
#'   \item{numRequests}
#' }
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201905/SuggestedAdUnitService#getSuggestedAdUnitsByStatement}{Google Documentation for getSuggestedAdUnitsByStatement}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getSuggestedAdUnitsByStatementResponse 
#' @examples
#' \dontrun{
#'  dat <- list(filterStatement=list('query'="WHERE status='ACTIVE'")) 
#'  res <- dfp_getSuggestedAdUnitsByStatement(dat)
#' }

#' @export
dfp_getSuggestedAdUnitsByStatement <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='SuggestedAdUnitService', root_name='getSuggestedAdUnitsByStatement', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='getSuggestedAdUnitsByStatementResponse', as_df=as_df)
  return(result)
}
#' 
#' performSuggestedAdUnitAction
#' 
#' Performs actions on SuggestedAdUnit objects that match the given Statement query. The following fields are supported for filtering: 
#' \itemize{
#'   \item{id}
#'   \item{numRequests}
#' }
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201905/SuggestedAdUnitService#performSuggestedAdUnitAction}{Google Documentation for performSuggestedAdUnitAction}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a performSuggestedAdUnitActionResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_performSuggestedAdUnitAction(request_data)
#' }

#' @export
dfp_performSuggestedAdUnitAction <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='SuggestedAdUnitService', root_name='performSuggestedAdUnitAction', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='performSuggestedAdUnitActionResponse', as_df=as_df)
  return(result)
}
#' 
