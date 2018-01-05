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
#' @importFrom plyr llply ldply
#' @importFrom utils tail
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201711/ExchangeRateService#createExchangeRates}{Google Documentation for createExchangeRates}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a createExchangeRatesResponse 
#' @export
dfp_createExchangeRates <- function(request_data, as_df=TRUE, verbose=FALSE){
 request_body <- make_request_body(service='ExchangeRateService', root_name='createExchangeRates', data=request_data)
  request <- build_soap_request(body = request_body, verbose=verbose)

  null_root <- is.null(request)
  response <- NULL
  response <- try(xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['createExchangeRatesResponse']]), silent=T)
  result <- if(null_root | is.null(response)){
    NULL
  } else if(is.null(response$rval)){
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
#' @importFrom plyr llply ldply
#' @importFrom utils tail
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201711/ExchangeRateService#getExchangeRatesByStatement}{Google Documentation for getExchangeRatesByStatement}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getExchangeRatesByStatementResponse 
#' @export
dfp_getExchangeRatesByStatement <- function(request_data, as_df=TRUE, verbose=FALSE){
 request_body <- make_request_body(service='ExchangeRateService', root_name='getExchangeRatesByStatement', data=request_data)
  request <- build_soap_request(body = request_body, verbose=verbose)

  null_root <- is.null(request)
  response <- NULL
  response <- try(xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['getExchangeRatesByStatementResponse']]), silent=T)
  result <- if(null_root | is.null(response)){
    NULL
  } else if(is.null(response$rval)){
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
#' @importFrom plyr llply ldply
#' @importFrom utils tail
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201711/ExchangeRateService#performExchangeRateAction}{Google Documentation for performExchangeRateAction}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a performExchangeRateActionResponse 
#' @export
dfp_performExchangeRateAction <- function(request_data, as_df=TRUE, verbose=FALSE){
 request_body <- make_request_body(service='ExchangeRateService', root_name='performExchangeRateAction', data=request_data)
  request <- build_soap_request(body = request_body, verbose=verbose)

  null_root <- is.null(request)
  response <- NULL
  response <- try(xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['performExchangeRateActionResponse']]), silent=T)
  result <- if(null_root | is.null(response)){
    NULL
  } else if(is.null(response$rval)){
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
#' updateExchangeRates
#' 
#' Updates the specified ExchangeRate objects.
#' 
#' @importFrom plyr llply ldply
#' @importFrom utils tail
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201711/ExchangeRateService#updateExchangeRates}{Google Documentation for updateExchangeRates}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a updateExchangeRatesResponse 
#' @export
dfp_updateExchangeRates <- function(request_data, as_df=TRUE, verbose=FALSE){
 request_body <- make_request_body(service='ExchangeRateService', root_name='updateExchangeRates', data=request_data)
  request <- build_soap_request(body = request_body, verbose=verbose)

  null_root <- is.null(request)
  response <- NULL
  response <- try(xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['updateExchangeRatesResponse']]), silent=T)
  result <- if(null_root | is.null(response)){
    NULL
  } else if(is.null(response$rval)){
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