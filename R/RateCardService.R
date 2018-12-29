#' RateCardService
#' 
#' Provides methods for managing RateCard objects.
#' To use this service, you
#' need to have the new sales management solution enabled on your network. If
#' you do not see a "Sales" tab in
#' \href{https://www.google.com/dfp}{DoubleClick for Publishers (DFP)}, you
#' will not be able to use this service.
#' 
#' createRateCards
#' 
#' Creates a list of RateCard objects. Rate cards must be activated before being associated with proposal line items and products.
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201811/RateCardService#createRateCards}{Google Documentation for createRateCards}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a createRateCardsResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_createRateCards(request_data)
#' }
#' @export
dfp_createRateCards <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='RateCardService', root_name='createRateCards', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='createRateCardsResponse', as_df=as_df)
  return(result)
}
#' 
#' getRateCardsByStatement
#' 
#' Gets a RateCardPage of RateCard objects that satisfy the given Statement query. The following fields are supported for filtering: 
#' \itemize{
#'   \item{ForMarketplace}
#'   \item{Id}
#'   \item{LastModifiedDateTime}
#'   \item{Name}
#'   \item{Status}
#' }
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201811/RateCardService#getRateCardsByStatement}{Google Documentation for getRateCardsByStatement}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getRateCardsByStatementResponse 
#' @examples
#' \dontrun{
#'  dat <- list(filterStatement=list('query'="WHERE status='ACTIVE'")) 
#'  res <- dfp_getRateCardsByStatement(dat)
#' }
#' @export
dfp_getRateCardsByStatement <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='RateCardService', root_name='getRateCardsByStatement', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='getRateCardsByStatementResponse', as_df=as_df)
  return(result)
}
#' 
#' performRateCardAction
#' 
#' Performs action on RateCard objects that satisfy the given Statement query.
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201811/RateCardService#performRateCardAction}{Google Documentation for performRateCardAction}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a performRateCardActionResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_performRateCardAction(request_data)
#' }
#' @export
dfp_performRateCardAction <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='RateCardService', root_name='performRateCardAction', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='performRateCardActionResponse', as_df=as_df)
  return(result)
}
#' 
#' updateRateCards
#' 
#' Updates a list of RateCard objects.
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201811/RateCardService#updateRateCards}{Google Documentation for updateRateCards}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a updateRateCardsResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_updateRateCards(request_data)
#' }
#' @export
dfp_updateRateCards <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='RateCardService', root_name='updateRateCards', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='updateRateCardsResponse', as_df=as_df)
  return(result)
}
#' 
