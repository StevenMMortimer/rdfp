#' PremiumRateService
#' 
#' Provides methods for managing PremiumRate objects.
#' To use this service,
#' you need to have the new sales management solution enabled on your network.
#' If you do not see a "Sales" tab in
#' \href{https://www.google.com/dfp}{DoubleClick for Publishers (DFP)}, you
#' will not be able to use this service.
#' 
#' createPremiumRates
#' 
#' Creates a list of new PremiumRate objects.
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201811/PremiumRateService#createPremiumRates}{Google Documentation for createPremiumRates}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a createPremiumRatesResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_createPremiumRates(request_data)
#' }
#' @export
dfp_createPremiumRates <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='PremiumRateService', root_name='createPremiumRates', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='createPremiumRatesResponse', as_df=as_df)
  return(result)
}
#' 
#' getPremiumRatesByStatement
#' 
#' Gets a PremiumRatePage of PremiumRate objects that satisfy the given Statement query. The following fields are supported for filtering: 
#' \itemize{
#'   \item{id}
#'   \item{rateCardId}
#'   \item{pricingMethod}
#' }
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201811/PremiumRateService#getPremiumRatesByStatement}{Google Documentation for getPremiumRatesByStatement}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getPremiumRatesByStatementResponse 
#' @examples
#' \dontrun{
#'  dat <- list(filterStatement=list('query'="WHERE status='ACTIVE'")) 
#'  res <- dfp_getPremiumRatesByStatement(dat)
#' }
#' @export
dfp_getPremiumRatesByStatement <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='PremiumRateService', root_name='getPremiumRatesByStatement', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='getPremiumRatesByStatementResponse', as_df=as_df)
  return(result)
}
#' 
#' updatePremiumRates
#' 
#' Updates the specified PremiumRate objects.
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201811/PremiumRateService#updatePremiumRates}{Google Documentation for updatePremiumRates}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a updatePremiumRatesResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_updatePremiumRates(request_data)
#' }
#' @export
dfp_updatePremiumRates <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='PremiumRateService', root_name='updatePremiumRates', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='updatePremiumRatesResponse', as_df=as_df)
  return(result)
}
#' 
