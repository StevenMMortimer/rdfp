#' LiveStreamEventService
#' 
#' Provides methods for creating, updating and retrieving LiveStreamEvent
#' objects.
#' This feature is not yet openly available for DFP Video
#' publishers. Publishers will need to apply for access for this feature
#' through their account managers.
#' 
#' createLiveStreamEvents
#' 
#' Creates new LiveStreamEvent objects. The following fields are required: 
#' \itemize{
#'   \item{LiveStreamEvent name}
#'   \item{LiveStreamEvent startDateTime}
#'   \item{LiveStreamEvent endDateTime}
#'   \item{LiveStreamEvent contentUrls}
#'   \item{LiveStreamEvent adTags}
#' } 
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201811/LiveStreamEventService#createLiveStreamEvents}{Google Documentation for createLiveStreamEvents}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a createLiveStreamEventsResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_createLiveStreamEvents(request_data)
#' }
#' @export
dfp_createLiveStreamEvents <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='LiveStreamEventService', root_name='createLiveStreamEvents', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='createLiveStreamEventsResponse', as_df=as_df)
  return(result)
}
#' 
#' getLiveStreamEventsByStatement
#' 
#' Gets a LiveStreamEventPage of LiveStreamEvent objects that satisfy the given Statement query. The following fields are supported for filtering: 
#' \itemize{
#'   \item{id}
#' }
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201811/LiveStreamEventService#getLiveStreamEventsByStatement}{Google Documentation for getLiveStreamEventsByStatement}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getLiveStreamEventsByStatementResponse 
#' @examples
#' \dontrun{
#'  dat <- list(filterStatement=list('query'="WHERE status='ACTIVE'")) 
#'  res <- dfp_getLiveStreamEventsByStatement(dat)
#' }
#' @export
dfp_getLiveStreamEventsByStatement <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='LiveStreamEventService', root_name='getLiveStreamEventsByStatement', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='getLiveStreamEventsByStatementResponse', as_df=as_df)
  return(result)
}
#' 
#' performLiveStreamEventAction
#' 
#' Performs actions on LiveStreamEvent objects that match the given Statement query.
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201811/LiveStreamEventService#performLiveStreamEventAction}{Google Documentation for performLiveStreamEventAction}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a performLiveStreamEventActionResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_performLiveStreamEventAction(request_data)
#' }
#' @export
dfp_performLiveStreamEventAction <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='LiveStreamEventService', root_name='performLiveStreamEventAction', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='performLiveStreamEventActionResponse', as_df=as_df)
  return(result)
}
#' 
#' registerSessionsForMonitoring
#' 
#' Registers the specified list of sessionIds for monitoring. Once the session IDs have been registered, all logged information about the sessions will be persisted and can be viewed via the Ad Manager UI.
#' A session ID is a unique identifier of a single user watching a live stream event.
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201811/LiveStreamEventService#registerSessionsForMonitoring}{Google Documentation for registerSessionsForMonitoring}
#' 
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a registerSessionsForMonitoringResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_registerSessionsForMonitoring()
#' }
#' @export
dfp_registerSessionsForMonitoring <- function(as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='LiveStreamEventService', root_name='registerSessionsForMonitoring', data=NULL)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='registerSessionsForMonitoringResponse', as_df=as_df)
  return(result)
}
#' 
#' updateLiveStreamEvents
#' 
#' Updates the specified LiveStreamEvent objects.
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201811/LiveStreamEventService#updateLiveStreamEvents}{Google Documentation for updateLiveStreamEvents}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a updateLiveStreamEventsResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_updateLiveStreamEvents(request_data)
#' }
#' @export
dfp_updateLiveStreamEvents <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='LiveStreamEventService', root_name='updateLiveStreamEvents', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='updateLiveStreamEventsResponse', as_df=as_df)
  return(result)
}
#' 
