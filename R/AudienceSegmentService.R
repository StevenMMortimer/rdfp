#' AudienceSegmentService
#' 
#' Provides operations for creating, updating and retrieving AudienceSegment
#' objects.
#' 
#' createAudienceSegments
#' 
#' Creates new RuleBasedFirstPartyAudienceSegment objects.
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201802/AudienceSegmentService#createAudienceSegments}{Google Documentation for createAudienceSegments}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a createAudienceSegmentsResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_createAudienceSegments(request_data)
#' }
#' @export
dfp_createAudienceSegments <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='AudienceSegmentService', root_name='createAudienceSegments', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='createAudienceSegmentsResponse', as_df=as_df)
  return(result)
}
#' 
#' getAudienceSegmentsByStatement
#' 
#' Gets an AudienceSegmentPage of AudienceSegment objects that satisfy the given Statement query. The following fields are supported for filtering: 
#' \itemize{
#'   \item{id}
#'   \item{name}
#'   \item{status}
#'   \item{type}
#'   \item{size}
#'   \item{dataProviderName}
#'   \item{approvalStatus}
#'   \item{cost}
#'   \item{startDateTime}
#'   \item{endDateTime}
#' }
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201802/AudienceSegmentService#getAudienceSegmentsByStatement}{Google Documentation for getAudienceSegmentsByStatement}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getAudienceSegmentsByStatementResponse 
#' @examples
#' \dontrun{
#'  dat <- list(filterStatement=list('query'="WHERE status='ACTIVE'")) 
#'  res <- dfp_getAudienceSegmentsByStatement(dat)
#' }
#' @export
dfp_getAudienceSegmentsByStatement <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='AudienceSegmentService', root_name='getAudienceSegmentsByStatement', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='getAudienceSegmentsByStatementResponse', as_df=as_df)
  return(result)
}
#' 
#' performAudienceSegmentAction
#' 
#' Performs the given AudienceSegmentAction on the set of segments identified by the given statement.
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201802/AudienceSegmentService#performAudienceSegmentAction}{Google Documentation for performAudienceSegmentAction}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a performAudienceSegmentActionResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_performAudienceSegmentAction(request_data)
#' }
#' @export
dfp_performAudienceSegmentAction <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='AudienceSegmentService', root_name='performAudienceSegmentAction', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='performAudienceSegmentActionResponse', as_df=as_df)
  return(result)
}
#' 
#' updateAudienceSegments
#' 
#' Updates the given RuleBasedFirstPartyAudienceSegment objects.
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201802/AudienceSegmentService#updateAudienceSegments}{Google Documentation for updateAudienceSegments}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a updateAudienceSegmentsResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_updateAudienceSegments(request_data)
#' }
#' @export
dfp_updateAudienceSegments <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='AudienceSegmentService', root_name='updateAudienceSegments', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='updateAudienceSegmentsResponse', as_df=as_df)
  return(result)
}
#' 
