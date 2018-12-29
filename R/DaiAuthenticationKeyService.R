#' DaiAuthenticationKeyService
#' 
#' Provides methods for creating, updating and retrieving DaiAuthenticationKey
#' objects.
#' 
#' createDaiAuthenticationKeys
#' 
#' Creates new DaiAuthenticationKey objects.
#' The following fields are required: 
#' \itemize{
#'   \item{DaiAuthenticationKey name}
#' } 
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201811/DaiAuthenticationKeyService#createDaiAuthenticationKeys}{Google Documentation for createDaiAuthenticationKeys}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a createDaiAuthenticationKeysResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_createDaiAuthenticationKeys(request_data)
#' }
#' @export
dfp_createDaiAuthenticationKeys <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='DaiAuthenticationKeyService', root_name='createDaiAuthenticationKeys', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='createDaiAuthenticationKeysResponse', as_df=as_df)
  return(result)
}
#' 
#' getDaiAuthenticationKeysByStatement
#' 
#' Gets a DaiAuthenticationKeyPage of DaiAuthenticationKey objects that satisfy the given Statement query. The following fields are supported for filtering: 
#' \itemize{
#'   \item{id}
#'   \item{status}
#'   \item{name}
#' }
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201811/DaiAuthenticationKeyService#getDaiAuthenticationKeysByStatement}{Google Documentation for getDaiAuthenticationKeysByStatement}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getDaiAuthenticationKeysByStatementResponse 
#' @examples
#' \dontrun{
#'  dat <- list(filterStatement=list('query'="WHERE status='ACTIVE'")) 
#'  res <- dfp_getDaiAuthenticationKeysByStatement(dat)
#' }
#' @export
dfp_getDaiAuthenticationKeysByStatement <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='DaiAuthenticationKeyService', root_name='getDaiAuthenticationKeysByStatement', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='getDaiAuthenticationKeysByStatementResponse', as_df=as_df)
  return(result)
}
#' 
#' performDaiAuthenticationKeyAction
#' 
#' Performs actions on DaiAuthenticationKey objects that match the given \{@@link Statement query\}.
#' DAI authentication keys cannot be deactivated if there are active LiveStreamEvents or Content Sources that are using them.
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201811/DaiAuthenticationKeyService#performDaiAuthenticationKeyAction}{Google Documentation for performDaiAuthenticationKeyAction}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a performDaiAuthenticationKeyActionResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_performDaiAuthenticationKeyAction(request_data)
#' }
#' @export
dfp_performDaiAuthenticationKeyAction <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='DaiAuthenticationKeyService', root_name='performDaiAuthenticationKeyAction', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='performDaiAuthenticationKeyActionResponse', as_df=as_df)
  return(result)
}
#' 
#' updateDaiAuthenticationKeys
#' 
#' Updates the specified DaiAuthenticationKey objects.
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201811/DaiAuthenticationKeyService#updateDaiAuthenticationKeys}{Google Documentation for updateDaiAuthenticationKeys}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a updateDaiAuthenticationKeysResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_updateDaiAuthenticationKeys(request_data)
#' }
#' @export
dfp_updateDaiAuthenticationKeys <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='DaiAuthenticationKeyService', root_name='updateDaiAuthenticationKeys', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='updateDaiAuthenticationKeysResponse', as_df=as_df)
  return(result)
}
#' 
