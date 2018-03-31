#' PackageService
#' 
#' Provides methods for creating, updating and retrieving Package objects.
#'
#' To use this service, you need to have the new sales management solution
#' enabled on your network. If you do not see a "Sales" tab in
#' \href{https://www.google.com/dfp}{DoubleClick for Publishers (DFP)}, you
#' will not be able to use this service.
#' 
#' createPackages
#' 
#' Creates new Package objects. For each package, the following fields are required:
#' \itemize{
#'   \item{Package proposalId}
#'   \item{Package productPackageId}
#'   \item{Package name}
#' } 
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201802/PackageService#createPackages}{Google Documentation for createPackages}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a createPackagesResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_createPackages(request_data)
#' }
#' @export
dfp_createPackages <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='PackageService', root_name='createPackages', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='createPackagesResponse', as_df=as_df)
  return(result)
}
#' 
#' getPackagesByStatement
#' 
#' Gets a PackagePage of Package objects that satisfy the given Statement query. The following fields are supported for filtering: 
#' \itemize{
#'   \item{id}
#'   \item{name}
#'   \item{proposalId}
#'   \item{productPackageId}
#'   \item{isArchived}
#'   \item{lastModifiedDateTime}
#' }
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201802/PackageService#getPackagesByStatement}{Google Documentation for getPackagesByStatement}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getPackagesByStatementResponse 
#' @examples
#' \dontrun{
#'  dat <- list(filterStatement=list('query'="WHERE status='ACTIVE'")) 
#'  res <- dfp_getPackagesByStatement(dat)
#' }
#' @export
dfp_getPackagesByStatement <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='PackageService', root_name='getPackagesByStatement', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='getPackagesByStatementResponse', as_df=as_df)
  return(result)
}
#' 
#' performPackageAction
#' 
#' Performs actions on Package objects that match the given Statement.
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201802/PackageService#performPackageAction}{Google Documentation for performPackageAction}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a performPackageActionResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_performPackageAction(request_data)
#' }
#' @export
dfp_performPackageAction <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='PackageService', root_name='performPackageAction', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='performPackageActionResponse', as_df=as_df)
  return(result)
}
#' 
#' updatePackages
#' 
#' Updates the specified Package objects.
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201802/PackageService#updatePackages}{Google Documentation for updatePackages}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a updatePackagesResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_updatePackages(request_data)
#' }
#' @export
dfp_updatePackages <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='PackageService', root_name='updatePackages', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='updatePackagesResponse', as_df=as_df)
  return(result)
}
#' 
