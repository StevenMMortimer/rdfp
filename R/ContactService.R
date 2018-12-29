#' ContactService
#' 
#' Provides methods for creating, updating and retrieving Contact objects.
#' 
#' createContacts
#' 
#' Creates new Contact objects.
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201811/ContactService#createContacts}{Google Documentation for createContacts}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a createContactsResponse 
#' @examples
#' \dontrun{
#' request_data <- list(contacts=list(name="TestContact1", 
#'                                    companyId=dfp_createCompanies_result$id, 
#'                                    status='UNINVITED', 
#'                                    cellPhone='(888) 999-7777',
#'                                    comment='API Test', 
#'                                    email='testcontact1@@gmail.com'))
#' result <- dfp_createContacts(request_data)
#' }
#' @export
dfp_createContacts <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='ContactService', root_name='createContacts', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='createContactsResponse', as_df=as_df)
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
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201811/ContactService#getContactsByStatement}{Google Documentation for getContactsByStatement}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getContactsByStatementResponse 
#' @examples
#' \dontrun{
#'  dat <- list(filterStatement=list('query'="WHERE status='ACTIVE'")) 
#'  res <- dfp_getContactsByStatement(dat)
#' }
#' @export
dfp_getContactsByStatement <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='ContactService', root_name='getContactsByStatement', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='getContactsByStatementResponse', as_df=as_df)
  return(result)
}
#' 
#' updateContacts
#' 
#' Updates the specified Contact objects.
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201811/ContactService#updateContacts}{Google Documentation for updateContacts}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a updateContactsResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_updateContacts(request_data)
#' }
#' @export
dfp_updateContacts <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='ContactService', root_name='updateContacts', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='updateContactsResponse', as_df=as_df)
  return(result)
}
#' 
