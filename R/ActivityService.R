#' ActivityService
#' 
#' Provides methods for creating, updating and retrieving Activity objects.
#'
#' An activity group contains Activity objects. Activities have a
#' many-to-one relationship with activity groups, meaning each activity can
#' belong to only one activity group, but activity groups can have multiple
#' activities. An activity group can be used to manage the activities it
#' contains.
#' 
#' createActivities
#' 
#' Creates a new Activity objects.
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201905/ActivityService#createActivities}{Google Documentation for createActivities}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a createActivitiesResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_createActivities(request_data)
#' }

#' @export
dfp_createActivities <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='ActivityService', root_name='createActivities', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='createActivitiesResponse', as_df=as_df)
  return(result)
}
#' 
#' getActivitiesByStatement
#' 
#' Gets an ActivityPage of Activity objects that satisfy the given Statement query. The following fields are supported for filtering: 
#' \itemize{
#'   \item{id}
#'   \item{name}
#'   \item{expectedURL}
#'   \item{status}
#'   \item{activityGroupId}
#' }
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201905/ActivityService#getActivitiesByStatement}{Google Documentation for getActivitiesByStatement}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getActivitiesByStatementResponse 
#' @examples
#' \dontrun{
#'  dat <- list(filterStatement=list('query'="WHERE status='ACTIVE'")) 
#'  res <- dfp_getActivitiesByStatement(dat)
#' }

#' @export
dfp_getActivitiesByStatement <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='ActivityService', root_name='getActivitiesByStatement', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='getActivitiesByStatementResponse', as_df=as_df)
  return(result)
}
#' 
#' updateActivities
#' 
#' Updates the specified Activity objects.
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201905/ActivityService#updateActivities}{Google Documentation for updateActivities}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a updateActivitiesResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_updateActivities(request_data)
#' }

#' @export
dfp_updateActivities <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='ActivityService', root_name='updateActivities', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='updateActivitiesResponse', as_df=as_df)
  return(result)
}
#' 
