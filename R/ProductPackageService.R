#' ProductPackageService
#' 
#' Provides methods for updating and retrieving ProductPackage objects.
#' A
#' ProductPackage represents a group of products which will be sold together.
#'
#' To use this service, you need to have the new sales management solution
#' enabled on your network. If you do not see a "Sales" tab in <a
#' href="https://www.google.com/dfp">DoubleClick for Publishers (DFP)</a>, you
#' will not be able to use this service.
#' 
#' createProductPackages
#' 
#' Creates new ProductPackage objects.
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201905/ProductPackageService#createProductPackages}{Google Documentation for createProductPackages}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a createProductPackagesResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_createProductPackages(request_data)
#' }

#' @export
dfp_createProductPackages <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='ProductPackageService', root_name='createProductPackages', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='createProductPackagesResponse', as_df=as_df)
  return(result)
}
#' 
#' getProductPackagesByStatement
#' 
#' Gets a ProductPackagePage of ProductPackage objects that satisfy the filtering criteria specified by given Statement query. The following fields are supported for filtering: 
#' \itemize{
#'   \item{id}
#'   \item{name}
#'   \item{notes}
#'   \item{status}
#'   \item{isArchived}
#'   \item{lastModifiedDateTime}
#' }
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201905/ProductPackageService#getProductPackagesByStatement}{Google Documentation for getProductPackagesByStatement}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getProductPackagesByStatementResponse 
#' @examples
#' \dontrun{
#'  dat <- list(filterStatement=list('query'="WHERE status='ACTIVE'")) 
#'  res <- dfp_getProductPackagesByStatement(dat)
#' }

#' @export
dfp_getProductPackagesByStatement <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='ProductPackageService', root_name='getProductPackagesByStatement', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='getProductPackagesByStatementResponse', as_df=as_df)
  return(result)
}
#' 
#' performProductPackageAction
#' 
#' Performs actions on ProductPackage objects that match the given \{@@link Statement query\}.
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201905/ProductPackageService#performProductPackageAction}{Google Documentation for performProductPackageAction}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a performProductPackageActionResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_performProductPackageAction(request_data)
#' }

#' @export
dfp_performProductPackageAction <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='ProductPackageService', root_name='performProductPackageAction', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='performProductPackageActionResponse', as_df=as_df)
  return(result)
}
#' 
#' updateProductPackages
#' 
#' Updates the specified ProductPackage objects.
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201905/ProductPackageService#updateProductPackages}{Google Documentation for updateProductPackages}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a updateProductPackagesResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_updateProductPackages(request_data)
#' }

#' @export
dfp_updateProductPackages <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='ProductPackageService', root_name='updateProductPackages', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='updateProductPackagesResponse', as_df=as_df)
  return(result)
}
#' 
