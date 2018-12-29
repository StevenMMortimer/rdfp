#' BaseRateService
#' 
#' Provides methods for managing BaseRate objects.
#' To use this service, you
#' need to have the new sales management solution enabled on your network. If
#' you do not see a "Sales" tab in
#' \href{https://www.google.com/dfp}{DoubleClick for Publishers (DFP)}, you
#' will not be able to use this service.
#' 
#' createBaseRates
#' 
#' Creates a list of new BaseRate objects.
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201811/BaseRateService#createBaseRates}{Google Documentation for createBaseRates}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a createBaseRatesResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_createBaseRates(request_data)
#' }
#' @export
dfp_createBaseRates <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='BaseRateService', root_name='createBaseRates', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='createBaseRatesResponse', as_df=as_df)
  return(result)
}
#' 
#' getBaseRatesByStatement
#' 
#' Gets a BaseRatePage of BaseRate objects that satisfy the given Statement query. The following fields are supported for filtering: 
#' \itemize{
#'   \item{rateCardId}
#'   \item{id}
#'   \item{productTemplateId}
#' }
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201811/BaseRateService#getBaseRatesByStatement}{Google Documentation for getBaseRatesByStatement}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getBaseRatesByStatementResponse 
#' @examples
#' \dontrun{
#'  dat <- list(filterStatement=list('query'="WHERE status='ACTIVE'")) 
#'  res <- dfp_getBaseRatesByStatement(dat)
#' }
#' @export
dfp_getBaseRatesByStatement <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='BaseRateService', root_name='getBaseRatesByStatement', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='getBaseRatesByStatementResponse', as_df=as_df)
  return(result)
}
#' 
#' performBaseRateAction
#' 
#' Performs actions on BaseRate objects that satisfy the given Statement query.
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201811/BaseRateService#performBaseRateAction}{Google Documentation for performBaseRateAction}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a performBaseRateActionResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_performBaseRateAction(request_data)
#' }
#' @export
dfp_performBaseRateAction <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='BaseRateService', root_name='performBaseRateAction', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='performBaseRateActionResponse', as_df=as_df)
  return(result)
}
#' 
#' updateBaseRates
#' 
#' Updates the specified BaseRate objects.
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201811/BaseRateService#updateBaseRates}{Google Documentation for updateBaseRates}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a updateBaseRatesResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_updateBaseRates(request_data)
#' }
#' @export
dfp_updateBaseRates <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='BaseRateService', root_name='updateBaseRates', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='updateBaseRatesResponse', as_df=as_df)
  return(result)
}
#' 
