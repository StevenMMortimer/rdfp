#' MobileApplicationService
#' 
#' Provides methods for retrieving MobileApplication objects.
#' 
#' createMobileApplications
#' 
#' Creates and claims MobileApplication mobile applications to be used for targeting in the network.
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201802/MobileApplicationService#createMobileApplications}{Google Documentation for createMobileApplications}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a createMobileApplicationsResponse 
#' @export
dfp_createMobileApplications <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='MobileApplicationService', root_name='createMobileApplications', data=request_data)
  response <- execute_soap_request(body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=response, resp_element='createMobileApplicationsResponse', as_df=as_df)
  return(result)
}
#' 
#' getMobileApplicationsByStatement
#' 
#' Gets a MobileApplicationPage mobileApplicationPage of MobileApplication mobile applications that satisfy the given Statement. The following fields are supported for filtering: 
#' \itemize{
#'   \item{id}
#'   \item{displayName}
#'   \item{appStore}
#'   \item{appStoreId}
#'   \item{NA}
#'   \item{isArchived}
#' }
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201802/MobileApplicationService#getMobileApplicationsByStatement}{Google Documentation for getMobileApplicationsByStatement}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getMobileApplicationsByStatementResponse 
#' @export
dfp_getMobileApplicationsByStatement <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='MobileApplicationService', root_name='getMobileApplicationsByStatement', data=request_data)
  response <- execute_soap_request(body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=response, resp_element='getMobileApplicationsByStatementResponse', as_df=as_df)
  return(result)
}
#' 
#' performMobileApplicationAction
#' 
#' Performs an action on MobileApplication mobile applications.
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201802/MobileApplicationService#performMobileApplicationAction}{Google Documentation for performMobileApplicationAction}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a performMobileApplicationActionResponse 
#' @export
dfp_performMobileApplicationAction <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='MobileApplicationService', root_name='performMobileApplicationAction', data=request_data)
  response <- execute_soap_request(body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=response, resp_element='performMobileApplicationActionResponse', as_df=as_df)
  return(result)
}
#' 
#' updateMobileApplications
#' 
#' Updates the specified MobileApplication mobile applications.
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201802/MobileApplicationService#updateMobileApplications}{Google Documentation for updateMobileApplications}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a updateMobileApplicationsResponse 
#' @export
dfp_updateMobileApplications <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='MobileApplicationService', root_name='updateMobileApplications', data=request_data)
  response <- execute_soap_request(body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=response, resp_element='updateMobileApplicationsResponse', as_df=as_df)
  return(result)
}
#' 
