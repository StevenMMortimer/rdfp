#' ProductService
#' 
#' Provides methods for updating and retrieving Product objects.
#' A Product
#' represents a line item proposal. Products are generated from
#' ProductTemplate product templates on a periodic basis using the product
#' template's attributes. Products are typically used by inventory managers to
#' restrict what salespeople can sell.
#' To use this service, you need to
#' have the new sales management solution enabled on your network. If you do
#' not see a "Sales" tab in \href{https://www.google.com/dfp}{DoubleClick for
#' Publishers (DFP)}, you will not be able to use this service.
#' 
#' getProductsByStatement
#' 
#' Gets a ProductPage of Product objects that satisfy the criteria specified by given Statement query.  When using sales management, the following fields are supported for filtering and/or sorting.  
#' \itemize{
#'   \item{rateCardId}
#'   \item{status}
#'   \item{lineItemType}
#'   \item{productType}
#'   \item{rateType}
#'   \item{productTemplateId}
#'   \item{name}
#'   \item{description}
#'   \item{id}
#'   \item{lastModifiedDateTime}
#' }
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201811/ProductService#getProductsByStatement}{Google Documentation for getProductsByStatement}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getProductsByStatementResponse 
#' @examples
#' \dontrun{
#'  dat <- list(filterStatement=list('query'="WHERE status='ACTIVE'")) 
#'  res <- dfp_getProductsByStatement(dat)
#' }
#' @export
dfp_getProductsByStatement <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='ProductService', root_name='getProductsByStatement', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='getProductsByStatementResponse', as_df=as_df)
  return(result)
}
#' 
#' performProductAction
#' 
#' Performs action on Product objects that satisfy the given Statement.
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201811/ProductService#performProductAction}{Google Documentation for performProductAction}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a performProductActionResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_performProductAction(request_data)
#' }
#' @export
dfp_performProductAction <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='ProductService', root_name='performProductAction', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='performProductActionResponse', as_df=as_df)
  return(result)
}
#' 
#' updateProducts
#' 
#' Updates the specified Product objects. Note non-updatable fields will not be backfilled.
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201811/ProductService#updateProducts}{Google Documentation for updateProducts}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a updateProductsResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_updateProducts(request_data)
#' }
#' @export
dfp_updateProducts <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='ProductService', root_name='updateProducts', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='updateProductsResponse', as_df=as_df)
  return(result)
}
#' 
