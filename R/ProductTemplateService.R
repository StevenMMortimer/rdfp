#' ProductTemplateService
#' 
#' Provides methods for creating, updating and retrieving ProductTemplate
#' objects.
#' A product template is used to generate a set of products.
#' Products allow inventory managers to control what salespeople can sell.
#'
#' To use this service, you need to have the new sales management solution
#' enabled on your network. If you do not see a "Sales" tab in
#' \href{https://www.google.com/dfp}{DoubleClick for Publishers (DFP)}, you
#' will not be able to use this service.
#' 
#' createProductTemplates
#' 
#' Creates new ProductTemplate objects.
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201811/ProductTemplateService#createProductTemplates}{Google Documentation for createProductTemplates}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a createProductTemplatesResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_createProductTemplates(request_data)
#' }
#' @export
dfp_createProductTemplates <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='ProductTemplateService', root_name='createProductTemplates', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='createProductTemplatesResponse', as_df=as_df)
  return(result)
}
#' 
#' getProductTemplatesByStatement
#' 
#' Gets a ProductTemplatePage of ProductTemplate objects that satisfy the filtering criteria specified by given Statement query. The following fields are supported for filtering: 
#' \itemize{
#'   \item{id}
#'   \item{name}
#'   \item{nameMacro}
#'   \item{description}
#'   \item{status}
#'   \item{lastModifiedDateTime}
#'   \item{lineItemType}
#'   \item{productType}
#'   \item{rateType}
#' }
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201811/ProductTemplateService#getProductTemplatesByStatement}{Google Documentation for getProductTemplatesByStatement}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getProductTemplatesByStatementResponse 
#' @examples
#' \dontrun{
#'  dat <- list(filterStatement=list('query'="WHERE status='ACTIVE'")) 
#'  res <- dfp_getProductTemplatesByStatement(dat)
#' }
#' @export
dfp_getProductTemplatesByStatement <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='ProductTemplateService', root_name='getProductTemplatesByStatement', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='getProductTemplatesByStatementResponse', as_df=as_df)
  return(result)
}
#' 
#' performProductTemplateAction
#' 
#' Performs action on ProductTemplate objects that satisfy the given Statement query.
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201811/ProductTemplateService#performProductTemplateAction}{Google Documentation for performProductTemplateAction}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a performProductTemplateActionResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_performProductTemplateAction(request_data)
#' }
#' @export
dfp_performProductTemplateAction <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='ProductTemplateService', root_name='performProductTemplateAction', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='performProductTemplateActionResponse', as_df=as_df)
  return(result)
}
#' 
#' updateProductTemplates
#' 
#' Updates the specified ProductTemplate objects.
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201811/ProductTemplateService#updateProductTemplates}{Google Documentation for updateProductTemplates}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a updateProductTemplatesResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_updateProductTemplates(request_data)
#' }
#' @export
dfp_updateProductTemplates <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='ProductTemplateService', root_name='updateProductTemplates', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='updateProductTemplatesResponse', as_df=as_df)
  return(result)
}
#' 
