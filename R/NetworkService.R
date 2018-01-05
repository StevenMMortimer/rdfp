#' NetworkService
#' 
#' Provides operations for retrieving information related to the publisher's
#' networks. This service can be used to obtain the list of all networks that
#' the current login has access to, or to obtain information about a specific
#' network.
#' 
#' getAllNetworks
#' 
#' Returns the list of Network objects to which the current login has access.
#' Intended to be used without a network code in the SOAP header when the login may have more than one network associated with it.Returns the list of Network objects to which the current login has access.
#' Intended to be used without a network code in the SOAP header when the login may have more than one network associated with it.@@return the networks to which the current login has access Returns the list of Network objects to which the current login has access.
#' Intended to be used without a network code in the SOAP header when the login may have more than one network associated with it.@@return the networks to which the current login has access
#' 
#' @importFrom plyr llply ldply
#' @importFrom utils tail
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201711/NetworkService#getAllNetworks}{Google Documentation for getAllNetworks}
#' 
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getAllNetworksResponse 
#' @export
dfp_getAllNetworks <- function(as_df=TRUE, verbose=FALSE){
 request_body <- make_request_body(service='NetworkService', root_name='getAllNetworks', data=NULL)
  request <- build_soap_request(body = request_body, verbose=verbose)

  null_root <- is.null(request)
  response <- NULL
  response <- try(xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['getAllNetworksResponse']]), silent=T)
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
#' getCurrentNetwork
#' 
#' Returns the current network for which requests are being made. Returns the current network for which requests are being made. @@return the network for which the user is currently making the request Returns the current network for which requests are being made. @@return the network for which the user is currently making the request
#' 
#' @importFrom plyr llply ldply
#' @importFrom utils tail
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201711/NetworkService#getCurrentNetwork}{Google Documentation for getCurrentNetwork}
#' 
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getCurrentNetworkResponse 
#' @export
dfp_getCurrentNetwork <- function(as_df=TRUE, verbose=FALSE){
 request_body <- make_request_body(service='NetworkService', root_name='getCurrentNetwork', data=NULL)
  request <- build_soap_request(body = request_body, verbose=verbose)

  null_root <- is.null(request)
  response <- NULL
  response <- try(xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['getCurrentNetworkResponse']]), silent=T)
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
#' makeTestNetwork
#' 
#' Creates a new blank network for testing purposes using the current login.
#' Each login(i.e. email address) can only have one test network. Data from any of your existing networks will not be transferred to the new test network. Once the test network is created, the test network can be used in the API by supplying the Network networkCode in the SOAP header or by logging into the DFP UI.
#' Test networks are limited in the following ways:
#' \itemize{
#'   \item{Test networks cannot serve ads.}
#'   \item{Because test networks cannot serve ads, reports will always come back without data.}
#'   \item{Since forecasting requires serving history, forecast service results will be faked. See ForecastService for more info.}
#'   \item{Test networks are, by default, small business networks and do not have any premium features. To have additional features turned on, please contact your account manager.}
#'   \item{Test networks are limited to 10,000 objects per entity type.}
#' } Creates a new blank network for testing purposes using the current login.
#' Each login(i.e. email address) can only have one test network. Data from any of your existing networks will not be transferred to the new test network. Once the test network is created, the test network can be used in the API by supplying the Network networkCode in the SOAP header or by logging into the DFP UI.
#' Test networks are limited in the following ways:
#' \itemize{
#'   \item{Test networks cannot serve ads.}
#'   \item{Because test networks cannot serve ads, reports will always come back without data.}
#'   \item{Since forecasting requires serving history, forecast service results will be faked. See ForecastService for more info.}
#'   \item{Test networks are, by default, small business networks and do not have any premium features. To have additional features turned on, please contact your account manager.}
#'   \item{Test networks are limited to 10,000 objects per entity type.}
#' } Creates a new blank network for testing purposes using the current login.
#' Each login(i.e. email address) can only have one test network. Data from any of your existing networks will not be transferred to the new test network. Once the test network is created, the test network can be used in the API by supplying the Network networkCode in the SOAP header or by logging into the DFP UI.
#' Test networks are limited in the following ways:
#' \itemize{
#'   \item{Test networks cannot serve ads.}
#'   \item{Because test networks cannot serve ads, reports will always come back without data.}
#'   \item{Since forecasting requires serving history, forecast service results will be faked. See ForecastService for more info.}
#'   \item{Test networks are, by default, small business networks and do not have any premium features. To have additional features turned on, please contact your account manager.}
#'   \item{Test networks are limited to 10,000 objects per entity type.}
#' } 
#' 
#' @importFrom plyr llply ldply
#' @importFrom utils tail
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201711/NetworkService#makeTestNetwork}{Google Documentation for makeTestNetwork}
#' 
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a makeTestNetworkResponse 
#' @export
dfp_makeTestNetwork <- function(as_df=TRUE, verbose=FALSE){
 request_body <- make_request_body(service='NetworkService', root_name='makeTestNetwork', data=NULL)
  request <- build_soap_request(body = request_body, verbose=verbose)

  null_root <- is.null(request)
  response <- NULL
  response <- try(xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['makeTestNetworkResponse']]), silent=T)
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
#' updateNetwork
#' 
#' Updates the specified network. Currently, only the network display name can be updated.
#' 
#' @importFrom plyr llply ldply
#' @importFrom utils tail
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201711/NetworkService#updateNetwork}{Google Documentation for updateNetwork}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a updateNetworkResponse 
#' @export
dfp_updateNetwork <- function(request_data, as_df=TRUE, verbose=FALSE){
 request_body <- make_request_body(service='NetworkService', root_name='updateNetwork', data=request_data)
  request <- build_soap_request(body = request_body, verbose=verbose)

  null_root <- is.null(request)
  response <- NULL
  response <- try(xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['updateNetworkResponse']]), silent=T)
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
