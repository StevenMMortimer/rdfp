#' ProposalService
#' 
#' Provides methods for adding, updating and retrieving Proposal objects.
#' 
#' createProposals
#' 
#' Creates new Proposal objects. For each proposal, the following fields are required:
#' \itemize{
#'   \item{Proposal name}
#' } 
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201905/ProposalService#createProposals}{Google Documentation for createProposals}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a createProposalsResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_createProposals(request_data)
#' }

#' @export
dfp_createProposals <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='ProposalService', root_name='createProposals', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='createProposalsResponse', as_df=as_df)
  return(result)
}
#' 
#' getMarketplaceCommentsByStatement
#' 
#' Gets a MarketplaceCommentPage of MarketplaceComment objects that satisfy the given Statement query. This method only returns comments already sent to Marketplace, local draft ProposalMarketplaceInfo marketplaceComment are not included. The following fields are supported for filtering: 
#' \itemize{
#'   \item{proposalId}
#' }
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201905/ProposalService#getMarketplaceCommentsByStatement}{Google Documentation for getMarketplaceCommentsByStatement}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getMarketplaceCommentsByStatementResponse 
#' @examples
#' \dontrun{
#'  dat <- list(filterStatement=list('query'="WHERE status='ACTIVE'")) 
#'  res <- dfp_getMarketplaceCommentsByStatement(dat)
#' }

#' @export
dfp_getMarketplaceCommentsByStatement <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='ProposalService', root_name='getMarketplaceCommentsByStatement', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='getMarketplaceCommentsByStatementResponse', as_df=as_df)
  return(result)
}
#' 
#' getProposalsByStatement
#' 
#' Gets a ProposalPage of Proposal objects that satisfy the given Statement query. The following fields are supported for filtering: 
#' \itemize{
#'   \item{id}
#'   \item{dfpOrderId}
#'   \item{name}
#'   \item{status}
#'   \item{isArchived}
#'   \item{approvalStatus Only applicable for proposals using sales management}
#'   \item{lastModifiedDateTime}
#'   \item{thirdPartyAdServerId  Only applicable for non-programmatic proposals using sales management}
#'   \item{customThirdPartyAdServerName  Only applicable for non-programmatic proposals using sales management}
#'   \item{hasOfflineErrors}
#'   \item{isProgrammatic}
#'   \item{negotiationStatus Only applicable for programmatic proposals}
#' }
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201905/ProposalService#getProposalsByStatement}{Google Documentation for getProposalsByStatement}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getProposalsByStatementResponse 
#' @examples
#' \dontrun{
#'  dat <- list(filterStatement=list('query'="WHERE status='ACTIVE'")) 
#'  res <- dfp_getProposalsByStatement(dat)
#' }

#' @export
dfp_getProposalsByStatement <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='ProposalService', root_name='getProposalsByStatement', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='getProposalsByStatementResponse', as_df=as_df)
  return(result)
}
#' 
#' performProposalAction
#' 
#' Performs actions on Proposal objects that match the given Statement query. The following fields are also required when submitting proposals for approval:
#' \itemize{
#'   \item{Proposal advertiser}
#'   \item{Proposal primarySalesperson}
#'   \item{Proposal primaryTraffickerId}
#' } 
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201905/ProposalService#performProposalAction}{Google Documentation for performProposalAction}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a performProposalActionResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_performProposalAction(request_data)
#' }

#' @export
dfp_performProposalAction <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='ProposalService', root_name='performProposalAction', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='performProposalActionResponse', as_df=as_df)
  return(result)
}
#' 
#' updateProposals
#' 
#' Updates the specified Proposal objects.
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201905/ProposalService#updateProposals}{Google Documentation for updateProposals}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a updateProposalsResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_updateProposals(request_data)
#' }

#' @export
dfp_updateProposals <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='ProposalService', root_name='updateProposals', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='updateProposalsResponse', as_df=as_df)
  return(result)
}
#' 
