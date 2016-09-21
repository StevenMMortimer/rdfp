#' PremiumRateService
#' 
#' Provides methods for managing PremiumRate objects.
#' To use this service,
#' you need to have the new sales management solution enabled on your network.
#' If you do not see a "Sales" tab in <a
#' href="https://www.google.com/dfp">DoubleClick for Publishers (DFP)</a>, you
#' will not be able to use this service.
#' 
#' createPremiumRates
#' 
#' Creates a list of new PremiumRate objects.
#' 
#' @importFrom plyr llply ldply
#' @importFrom utils tail
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201608/PremiumRateService#createPremiumRates}{Google Documentation for createPremiumRates}
#' 
#' @usage dfp_createPremiumRates(request_data, as_df=TRUE, verbose=FALSE)
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a createPremiumRatesResponse 
#' @export
dfp_createPremiumRates <- function(request_data, as_df=TRUE, verbose=FALSE){
 request_body <- make_request_body(service='PremiumRateService', root_name='createPremiumRates', data=request_data)
  request <- build_soap_request(body = request_body, verbose=verbose)

  response <- xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['createPremiumRatesResponse']])
  result <- if(is.null(response$rval)){
    NULL
  } else if (as_df){
      if(length(response[grepl('rval', names(response))])==1 &
          names(response[grepl('rval', names(response))][[1]])[1]=='totalResultSetSize' &
           names(response[grepl('rval', names(response))][[1]])[2]=='startIndex'){
            ldply(tail(response[grepl('rval', names(response))]$rval, -2),
             .fun=function(x){
                 x <- xmlToList(x)
                 x[sapply(x, is.null)] <- NA
                 new_x <- as.data.frame(x, stringsAsFactors = F)
                 return(new_x)
             }, .id=NULL)
      } else {
      ldply(response[grepl('rval', names(response))],
            .fun=function(x){
               x <- xmlToList(x)
               x[sapply(x, is.null)] <- NA
               new_x <- as.data.frame(x, stringsAsFactors = F)
               return(new_x)
             }, .id=NULL)
      }
  } else {
      llply(response[grepl('rval', names(response))],
            .fun=function(x){
               x <- xmlToList(x)
               return(x)
             })
  }
  return(result)
}
#' 
#' getPremiumRatesByStatement
#' 
#' Gets a PremiumRatePage of PremiumRate objects that satisfy the given Statement query. The following fields are supported for filtering:  list of premium rates. 
#' \itemize{
#'   \item{id}
#'   \item{rateCardId}
#'   \item{pricingMethod}
#' }
#' 
#' @importFrom plyr llply ldply
#' @importFrom utils tail
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201608/PremiumRateService#getPremiumRatesByStatement}{Google Documentation for getPremiumRatesByStatement}
#' 
#' @usage dfp_getPremiumRatesByStatement(request_data, as_df=TRUE, verbose=FALSE)
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getPremiumRatesByStatementResponse 
#' @export
dfp_getPremiumRatesByStatement <- function(request_data, as_df=TRUE, verbose=FALSE){
 request_body <- make_request_body(service='PremiumRateService', root_name='getPremiumRatesByStatement', data=request_data)
  request <- build_soap_request(body = request_body, verbose=verbose)

  response <- xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['getPremiumRatesByStatementResponse']])
  result <- if(is.null(response$rval)){
    NULL
  } else if (as_df){
      if(length(response[grepl('rval', names(response))])==1 &
          names(response[grepl('rval', names(response))][[1]])[1]=='totalResultSetSize' &
           names(response[grepl('rval', names(response))][[1]])[2]=='startIndex'){
            ldply(tail(response[grepl('rval', names(response))]$rval, -2),
             .fun=function(x){
                 x <- xmlToList(x)
                 x[sapply(x, is.null)] <- NA
                 new_x <- as.data.frame(x, stringsAsFactors = F)
                 return(new_x)
             }, .id=NULL)
      } else {
      ldply(response[grepl('rval', names(response))],
            .fun=function(x){
               x <- xmlToList(x)
               x[sapply(x, is.null)] <- NA
               new_x <- as.data.frame(x, stringsAsFactors = F)
               return(new_x)
             }, .id=NULL)
      }
  } else {
      llply(response[grepl('rval', names(response))],
            .fun=function(x){
               x <- xmlToList(x)
               return(x)
             })
  }
  return(result)
}
#' 
#' updatePremiumRates
#' 
#' Updates the specified PremiumRate objects.
#' 
#' @importFrom plyr llply ldply
#' @importFrom utils tail
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201608/PremiumRateService#updatePremiumRates}{Google Documentation for updatePremiumRates}
#' 
#' @usage dfp_updatePremiumRates(request_data, as_df=TRUE, verbose=FALSE)
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a updatePremiumRatesResponse 
#' @export
dfp_updatePremiumRates <- function(request_data, as_df=TRUE, verbose=FALSE){
 request_body <- make_request_body(service='PremiumRateService', root_name='updatePremiumRates', data=request_data)
  request <- build_soap_request(body = request_body, verbose=verbose)

  response <- xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['updatePremiumRatesResponse']])
  result <- if(is.null(response$rval)){
    NULL
  } else if (as_df){
      if(length(response[grepl('rval', names(response))])==1 &
          names(response[grepl('rval', names(response))][[1]])[1]=='totalResultSetSize' &
           names(response[grepl('rval', names(response))][[1]])[2]=='startIndex'){
            ldply(tail(response[grepl('rval', names(response))]$rval, -2),
             .fun=function(x){
                 x <- xmlToList(x)
                 x[sapply(x, is.null)] <- NA
                 new_x <- as.data.frame(x, stringsAsFactors = F)
                 return(new_x)
             }, .id=NULL)
      } else {
      ldply(response[grepl('rval', names(response))],
            .fun=function(x){
               x <- xmlToList(x)
               x[sapply(x, is.null)] <- NA
               new_x <- as.data.frame(x, stringsAsFactors = F)
               return(new_x)
             }, .id=NULL)
      }
  } else {
      llply(response[grepl('rval', names(response))],
            .fun=function(x){
               x <- xmlToList(x)
               return(x)
             })
  }
  return(result)
}
#' 
