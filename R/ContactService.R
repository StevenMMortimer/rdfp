#' ContactService
#' 
#' Provides methods for creating, updating and retrieving Contact objects.
#' 
#' createContacts
#' 
#' Creates new Contact objects.
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201802/ContactService#createContacts}{Google Documentation for createContacts}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a createContactsResponse 
#' @export
dfp_createContacts <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='ContactService', root_name='createContacts', data=request_data)
  response <- execute_soap_request(body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=response, resp_element='createContactsResponse', as_df=as_df)
  return(result)
}
#' 
#' getContactsByStatement
#' 
#' Gets a ContactPage of Contact objects that satisfy the given Statement query. The following fields are supported for filtering: 
#' \itemize{
#'   \item{name}
#'   \item{email}
#'   \item{id}
#'   \item{comment}
#'   \item{companyId}
#'   \item{title}
#'   \item{cellPhone}
#'   \item{workPhone}
#'   \item{faxPhone}
#'   \item{status}
#' }
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201802/ContactService#getContactsByStatement}{Google Documentation for getContactsByStatement}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getContactsByStatementResponse 
#' @export
dfp_getContactsByStatement <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='ContactService', root_name='getContactsByStatement', data=request_data)
  response <- execute_soap_request(body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=response, resp_element='getContactsByStatementResponse', as_df=as_df)
  return(result)
}
#' 
#' updateContacts
#' 
#' Updates the specified Contact objects.
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201802/ContactService#updateContacts}{Google Documentation for updateContacts}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a updateContactsResponse 
#' @export
dfp_updateContacts <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='ContactService', root_name='updateContacts', data=request_data)
  response <- execute_soap_request(body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=response, resp_element='updateContactsResponse', as_df=as_df)
  return(result)
}
#' 
