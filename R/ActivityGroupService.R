#' ActivityGroupService
#' 
#' Provides methods for creating, updating and retrieving ActivityGroup
#' objects.
#' An activity group contains Activity objects. Activities have a
#' many-to-one relationship with activity groups, meaning each activity can
#' belong to only one activity group, but activity groups can have multiple
#' activities. An activity group can be used to manage the activities it
#' contains.
#' 
#' createActivityGroups
#' 
#' Creates a new ActivityGroup objects.
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201802/ActivityGroupService#createActivityGroups}{Google Documentation for createActivityGroups}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a createActivityGroupsResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_createActivityGroups(request_data)
#' }
#' @export
dfp_createActivityGroups <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='ActivityGroupService', root_name='createActivityGroups', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='createActivityGroupsResponse', as_df=as_df)
  return(result)
}
#' 
#' getActivityGroupsByStatement
#' 
#' Gets an ActivityGroupPage of ActivityGroup objects that satisfy the given Statement query. The following fields are supported for filtering: 
#' \itemize{
#'   \item{id}
#'   \item{name}
#'   \item{impressionsLookback}
#'   \item{clicksLookback}
#'   \item{status}
#' }
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201802/ActivityGroupService#getActivityGroupsByStatement}{Google Documentation for getActivityGroupsByStatement}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getActivityGroupsByStatementResponse 
#' @examples
#' \dontrun{
#'  dat <- list(filterStatement=list('query'="WHERE status='ACTIVE'")) 
#'  res <- dfp_getActivityGroupsByStatement(dat)
#' }
#' @export
dfp_getActivityGroupsByStatement <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='ActivityGroupService', root_name='getActivityGroupsByStatement', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='getActivityGroupsByStatementResponse', as_df=as_df)
  return(result)
}
#' 
#' updateActivityGroups
#' 
#' Updates the specified ActivityGroup objects.
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201802/ActivityGroupService#updateActivityGroups}{Google Documentation for updateActivityGroups}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a updateActivityGroupsResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_updateActivityGroups(request_data)
#' }
#' @export
dfp_updateActivityGroups <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='ActivityGroupService', root_name='updateActivityGroups', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='updateActivityGroupsResponse', as_df=as_df)
  return(result)
}
#' 
