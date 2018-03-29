#' CustomTargetingService
#' 
#' Provides operations for creating, updating and retrieving
#' CustomTargetingKey and CustomTargetingValue objects.
#' 
#' createCustomTargetingKeys
#' 
#' Creates new CustomTargetingKey objects. The following fields are required: 
#' \itemize{
#'   \item{CustomTargetingKey name}
#'   \item{CustomTargetingKey type}
#' } 
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201802/CustomTargetingService#createCustomTargetingKeys}{Google Documentation for createCustomTargetingKeys}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a createCustomTargetingKeysResponse 
#' @export
dfp_createCustomTargetingKeys <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='CustomTargetingService', root_name='createCustomTargetingKeys', data=request_data)
  response <- execute_soap_request(body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=response, resp_element='createCustomTargetingKeysResponse', as_df=as_df)
  return(result)
}
#' 
#' createCustomTargetingValues
#' 
#' Creates new CustomTargetingValue objects. The following fields are required: 
#' \itemize{
#'   \item{CustomTargetingValue customTargetingKeyId}
#'   \item{CustomTargetingValue name}
#' } 
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201802/CustomTargetingService#createCustomTargetingValues}{Google Documentation for createCustomTargetingValues}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a createCustomTargetingValuesResponse 
#' @export
dfp_createCustomTargetingValues <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='CustomTargetingService', root_name='createCustomTargetingValues', data=request_data)
  response <- execute_soap_request(body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=response, resp_element='createCustomTargetingValuesResponse', as_df=as_df)
  return(result)
}
#' 
#' getCustomTargetingKeysByStatement
#' 
#' Gets a CustomTargetingKeyPage of CustomTargetingKey objects that satisfy the given Statement query. The following fields are supported for filtering: 
#' \itemize{
#'   \item{NA}
#'   \item{id}
#'   \item{name}
#'   \item{displayName}
#'   \item{type}
#' }
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201802/CustomTargetingService#getCustomTargetingKeysByStatement}{Google Documentation for getCustomTargetingKeysByStatement}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getCustomTargetingKeysByStatementResponse 
#' @export
dfp_getCustomTargetingKeysByStatement <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='CustomTargetingService', root_name='getCustomTargetingKeysByStatement', data=request_data)
  response <- execute_soap_request(body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=response, resp_element='getCustomTargetingKeysByStatementResponse', as_df=as_df)
  return(result)
}
#' 
#' getCustomTargetingValuesByStatement
#' 
#' Gets a CustomTargetingValuePage of CustomTargetingValue objects that satisfy the given Statement query.  The WHERE clause in the Statement query must always contain CustomTargetingValue customTargetingKeyId as one of its columns in a way that it is AND'ed with the rest of the query. So, if you want to retrieve values for a known set of key ids, valid Statement query would look like:    "WHERE customTargetingKeyId IN ('17','18','19')" retrieves all values that are associated with keys having ids 17, 18, 19.   "WHERE customTargetingKeyId = '17' AND name = 'red'" retrieves values that are associated with keys having id 17 and value name is 'red'.     The following fields are supported for filtering: 
#' \itemize{
#'   \item{id}
#'   \item{customTargetingKeyId}
#'   \item{name}
#'   \item{displayName}
#'   \item{matchType}
#' }
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201802/CustomTargetingService#getCustomTargetingValuesByStatement}{Google Documentation for getCustomTargetingValuesByStatement}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getCustomTargetingValuesByStatementResponse 
#' @export
dfp_getCustomTargetingValuesByStatement <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='CustomTargetingService', root_name='getCustomTargetingValuesByStatement', data=request_data)
  response <- execute_soap_request(body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=response, resp_element='getCustomTargetingValuesByStatementResponse', as_df=as_df)
  return(result)
}
#' 
#' performCustomTargetingKeyAction
#' 
#' Performs actions on CustomTargetingKey objects that match the given Statement query.
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201802/CustomTargetingService#performCustomTargetingKeyAction}{Google Documentation for performCustomTargetingKeyAction}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a performCustomTargetingKeyActionResponse 
#' @export
dfp_performCustomTargetingKeyAction <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='CustomTargetingService', root_name='performCustomTargetingKeyAction', data=request_data)
  response <- execute_soap_request(body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=response, resp_element='performCustomTargetingKeyActionResponse', as_df=as_df)
  return(result)
}
#' 
#' performCustomTargetingValueAction
#' 
#' Performs actions on CustomTargetingValue objects that match the given Statement query.
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201802/CustomTargetingService#performCustomTargetingValueAction}{Google Documentation for performCustomTargetingValueAction}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a performCustomTargetingValueActionResponse 
#' @export
dfp_performCustomTargetingValueAction <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='CustomTargetingService', root_name='performCustomTargetingValueAction', data=request_data)
  response <- execute_soap_request(body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=response, resp_element='performCustomTargetingValueActionResponse', as_df=as_df)
  return(result)
}
#' 
#' updateCustomTargetingKeys
#' 
#' Updates the specified CustomTargetingKey objects.
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201802/CustomTargetingService#updateCustomTargetingKeys}{Google Documentation for updateCustomTargetingKeys}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a updateCustomTargetingKeysResponse 
#' @export
dfp_updateCustomTargetingKeys <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='CustomTargetingService', root_name='updateCustomTargetingKeys', data=request_data)
  response <- execute_soap_request(body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=response, resp_element='updateCustomTargetingKeysResponse', as_df=as_df)
  return(result)
}
#' 
#' updateCustomTargetingValues
#' 
#' Updates the specified CustomTargetingValue objects.
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201802/CustomTargetingService#updateCustomTargetingValues}{Google Documentation for updateCustomTargetingValues}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a updateCustomTargetingValuesResponse 
#' @export
dfp_updateCustomTargetingValues <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='CustomTargetingService', root_name='updateCustomTargetingValues', data=request_data)
  response <- execute_soap_request(body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=response, resp_element='updateCustomTargetingValuesResponse', as_df=as_df)
  return(result)
}
#' 
