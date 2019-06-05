#' ExchangeRateService
#' 
#' Provides methods for adding, updating and retrieving ExchangeRate objects.
#' 
#' createExchangeRates
#' 
#' Creates new ExchangeRate objects. For each exchange rate, the following fields are required:
#' \itemize{
#'   \item{ExchangeRate currencyCode}
#'   \item{ExchangeRate exchangeRate when ExchangeRate refreshRate is ExchangeRateRefreshRate FIXED}
#' } 
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201905/ExchangeRateService#createExchangeRates}{Google Documentation for createExchangeRates}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a createExchangeRatesResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_createExchangeRates(request_data)
#' }

#' @export
dfp_createExchangeRates <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='ExchangeRateService', root_name='createExchangeRates', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='createExchangeRatesResponse', as_df=as_df)
  return(result)
}
#' 
#' getExchangeRatesByStatement
#' 
#' Gets a ExchangeRatePage of ExchangeRate objects that satisfy the given Statement query. The following fields are supported for filtering: 
#' \itemize{
#'   \item{id}
#'   \item{currencyCode}
#'   \item{refreshRate}
#'   \item{direction}
#'   \item{exchangeRate}
#' }
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201905/ExchangeRateService#getExchangeRatesByStatement}{Google Documentation for getExchangeRatesByStatement}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getExchangeRatesByStatementResponse 
#' @examples
#' \dontrun{
#'  dat <- list(filterStatement=list('query'="WHERE status='ACTIVE'")) 
#'  res <- dfp_getExchangeRatesByStatement(dat)
#' }

#' @export
dfp_getExchangeRatesByStatement <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='ExchangeRateService', root_name='getExchangeRatesByStatement', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='getExchangeRatesByStatementResponse', as_df=as_df)
  return(result)
}
#' 
#' performExchangeRateAction
#' 
#' Performs an action on ExchangeRate objects that satisfy the given Statement query. The following fields are supported for filtering: 
#' \itemize{
#'   \item{id}
#'   \item{currencyCode}
#'   \item{refreshRate}
#'   \item{direction}
#'   \item{exchangeRate}
#' }
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201905/ExchangeRateService#performExchangeRateAction}{Google Documentation for performExchangeRateAction}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a performExchangeRateActionResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_performExchangeRateAction(request_data)
#' }

#' @export
dfp_performExchangeRateAction <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='ExchangeRateService', root_name='performExchangeRateAction', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='performExchangeRateActionResponse', as_df=as_df)
  return(result)
}
#' 
#' updateExchangeRates
#' 
#' Updates the specified ExchangeRate objects.
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201905/ExchangeRateService#updateExchangeRates}{Google Documentation for updateExchangeRates}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a updateExchangeRatesResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_updateExchangeRates(request_data)
#' }

#' @export
dfp_updateExchangeRates <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='ExchangeRateService', root_name='updateExchangeRates', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='updateExchangeRatesResponse', as_df=as_df)
  return(result)
}
#' 
