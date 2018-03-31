#' CompanyService
#' 
#' Provides operations for creating, updating and retrieving Company objects.
#' 
#' createCompanies
#' 
#' Creates new Company objects.
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201802/CompanyService#createCompanies}{Google Documentation for createCompanies}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a createCompaniesResponse 
#' @examples
#' \dontrun{
#' request_data <- list(companies=list(name="TestCompany1", 
#'                                     type='HOUSE_ADVERTISER', 
#'                                     address='123 Main St Hometown, FL USA', 
#'                                     email='testcompany1@@gmail.com', 
#'                                     comment='API Test'))
#' result <- dfp_createCompanies(request_data)
#' }
#' @export
dfp_createCompanies <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='CompanyService', root_name='createCompanies', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='createCompaniesResponse', as_df=as_df)
  return(result)
}
#' 
#' getCompaniesByStatement
#' 
#' Gets a CompanyPage of Company objects that satisfy the given Statement query. The following fields are supported for filtering: 
#' \itemize{
#'   \item{id}
#'   \item{name}
#'   \item{type}
#'   \item{lastModifiedDateTime}
#' }
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201802/CompanyService#getCompaniesByStatement}{Google Documentation for getCompaniesByStatement}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getCompaniesByStatementResponse 
#' @examples
#' \dontrun{
#'  dat <- list(filterStatement=list('query'="WHERE status='ACTIVE'")) 
#'  res <- dfp_getCompaniesByStatement(dat)
#' }
#' @export
dfp_getCompaniesByStatement <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='CompanyService', root_name='getCompaniesByStatement', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='getCompaniesByStatementResponse', as_df=as_df)
  return(result)
}
#' 
#' updateCompanies
#' 
#' Updates the specified Company objects.
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201802/CompanyService#updateCompanies}{Google Documentation for updateCompanies}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a updateCompaniesResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_updateCompanies(request_data)
#' }
#' @export
dfp_updateCompanies <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='CompanyService', root_name='updateCompanies', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='updateCompaniesResponse', as_df=as_df)
  return(result)
}
#' 
