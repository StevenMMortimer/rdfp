#' ProductPackageItemService
#' 
#' Provides methods for creating and retrieving ProductPackageItem objects.
#'
#' A ProductPackageItem represents a product which will be associated with
#' a ProductPackage.
#' To use this service, you need to have the new sales
#' management solution enabled on your network. If you do not see a "Sales"
#' tab in \href{https://www.google.com/dfp}{DoubleClick for Publishers (DFP)},
#' you will not be able to use this service.
#' 
#' createProductPackageItems
#' 
#' Creates new ProductPackageItem objects.
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201811/ProductPackageItemService#createProductPackageItems}{Google Documentation for createProductPackageItems}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a createProductPackageItemsResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_createProductPackageItems(request_data)
#' }
#' @export
dfp_createProductPackageItems <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='ProductPackageItemService', root_name='createProductPackageItems', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='createProductPackageItemsResponse', as_df=as_df)
  return(result)
}
#' 
#' getProductPackageItemsByStatement
#' 
#' Gets a ProductPackageItemPage of ProductPackageItem objects that satisfy the filtering criteria specified by given Statement query. The following fields are supported for filtering: 
#' \itemize{
#'   \item{id}
#'   \item{productPackageId}
#'   \item{productId}
#'   \item{productTemplateId}
#'   \item{mandatory}
#'   \item{archived}
#' }
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201811/ProductPackageItemService#getProductPackageItemsByStatement}{Google Documentation for getProductPackageItemsByStatement}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getProductPackageItemsByStatementResponse 
#' @examples
#' \dontrun{
#'  dat <- list(filterStatement=list('query'="WHERE status='ACTIVE'")) 
#'  res <- dfp_getProductPackageItemsByStatement(dat)
#' }
#' @export
dfp_getProductPackageItemsByStatement <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='ProductPackageItemService', root_name='getProductPackageItemsByStatement', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='getProductPackageItemsByStatementResponse', as_df=as_df)
  return(result)
}
#' 
#' performProductPackageItemAction
#' 
#' Performs actions on ProductPackageItem objects that satisfy the given Statement query.
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201811/ProductPackageItemService#performProductPackageItemAction}{Google Documentation for performProductPackageItemAction}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a performProductPackageItemActionResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_performProductPackageItemAction(request_data)
#' }
#' @export
dfp_performProductPackageItemAction <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='ProductPackageItemService', root_name='performProductPackageItemAction', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='performProductPackageItemActionResponse', as_df=as_df)
  return(result)
}
#' 
#' updateProductPackageItems
#' 
#' Updates the specified ProductPackageItem objects.
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201811/ProductPackageItemService#updateProductPackageItems}{Google Documentation for updateProductPackageItems}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a updateProductPackageItemsResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_updateProductPackageItems(request_data)
#' }
#' @export
dfp_updateProductPackageItems <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='ProductPackageItemService', root_name='updateProductPackageItems', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='updateProductPackageItemsResponse', as_df=as_df)
  return(result)
}
#' 
