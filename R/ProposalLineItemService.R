#' ProposalLineItemService
#' 
#' Provides methods for creating, updating and retrieving ProposalLineItem
#' objects.
#' To use this service, you need to have the new sales management
#' solution enabled on your network. If you do not see a "Sales" tab in
#' \href{https://www.google.com/dfp}{DoubleClick for Publishers (DFP)}, you
#' will not be able to use this service.
#' 
#' createProposalLineItems
#' 
#' Creates new ProposalLineItem objects.
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201802/ProposalLineItemService#createProposalLineItems}{Google Documentation for createProposalLineItems}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a createProposalLineItemsResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_createProposalLineItems(request_data)
#' }
#' @export
dfp_createProposalLineItems <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='ProposalLineItemService', root_name='createProposalLineItems', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='createProposalLineItemsResponse', as_df=as_df)
  return(result)
}
#' 
#' getProposalLineItemsByStatement
#' 
#' Gets a ProposalLineItemPage of ProposalLineItem objects that satisfy the given Statement query. The following fields are supported for filtering: 
#' \itemize{
#'   \item{id}
#'   \item{name}
#'   \item{proposalId}
#'   \item{startDateTime}
#'   \item{endDateTime}
#'   \item{isArchived}
#'   \item{lastModifiedDateTime}
#'   \item{useThirdPartyAdServerFromProposal  Only applicable for non-programmatic proposal line items using sales management}
#'   \item{thirdPartyAdServerId  Only applicable for non-programmatic proposal line items using sales management}
#'   \item{customThirdPartyAdServerName  Only applicable for non-programmatic proposal line items using sales management}
#'   \item{isProgrammatic}
#' }
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201802/ProposalLineItemService#getProposalLineItemsByStatement}{Google Documentation for getProposalLineItemsByStatement}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getProposalLineItemsByStatementResponse 
#' @examples
#' \dontrun{
#'  dat <- list(filterStatement=list('query'="WHERE status='ACTIVE'")) 
#'  res <- dfp_getProposalLineItemsByStatement(dat)
#' }
#' @export
dfp_getProposalLineItemsByStatement <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='ProposalLineItemService', root_name='getProposalLineItemsByStatement', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='getProposalLineItemsByStatementResponse', as_df=as_df)
  return(result)
}
#' 
#' performProposalLineItemAction
#' 
#' Performs actions on ProposalLineItem objects that match the given Statement query.
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201802/ProposalLineItemService#performProposalLineItemAction}{Google Documentation for performProposalLineItemAction}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a performProposalLineItemActionResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_performProposalLineItemAction(request_data)
#' }
#' @export
dfp_performProposalLineItemAction <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='ProposalLineItemService', root_name='performProposalLineItemAction', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='performProposalLineItemActionResponse', as_df=as_df)
  return(result)
}
#' 
#' updateProposalLineItems
#' 
#' Updates the specified ProposalLineItem objects. If free editing mode is enabled, this will trigger inventory reservation and cause the proposal to be pushed to DFP again.
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201802/ProposalLineItemService#updateProposalLineItems}{Google Documentation for updateProposalLineItems}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a updateProposalLineItemsResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_updateProposalLineItems(request_data)
#' }
#' @export
dfp_updateProposalLineItems <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='ProposalLineItemService', root_name='updateProposalLineItems', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='updateProposalLineItemsResponse', as_df=as_df)
  return(result)
}
#' 
