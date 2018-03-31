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
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201802/NetworkService#getAllNetworks}{Google Documentation for getAllNetworks}
#' 
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getAllNetworksResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_getAllNetworks()
#' }
#' @export
dfp_getAllNetworks <- function(as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='NetworkService', root_name='getAllNetworks', data=NULL)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='getAllNetworksResponse', as_df=as_df)
  return(result)
}
#' 
#' getCurrentNetwork
#' 
#' Returns the current network for which requests are being made. Returns the current network for which requests are being made. @@return the network for which the user is currently making the request Returns the current network for which requests are being made. @@return the network for which the user is currently making the request
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201802/NetworkService#getCurrentNetwork}{Google Documentation for getCurrentNetwork}
#' 
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getCurrentNetworkResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_getCurrentNetwork()
#' }
#' @export
dfp_getCurrentNetwork <- function(as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='NetworkService', root_name='getCurrentNetwork', data=NULL)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='getCurrentNetworkResponse', as_df=as_df)
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
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201802/NetworkService#makeTestNetwork}{Google Documentation for makeTestNetwork}
#' 
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a makeTestNetworkResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_makeTestNetwork()
#' }
#' @export
dfp_makeTestNetwork <- function(as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='NetworkService', root_name='makeTestNetwork', data=NULL)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='makeTestNetworkResponse', as_df=as_df)
  return(result)
}
#' 
#' updateNetwork
#' 
#' Updates the specified network. Currently, only the network display name can be updated.
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201802/NetworkService#updateNetwork}{Google Documentation for updateNetwork}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a updateNetworkResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_updateNetwork(request_data)
#' }
#' @export
dfp_updateNetwork <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='NetworkService', root_name='updateNetwork', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='updateNetworkResponse', as_df=as_df)
  return(result)
}
#' 
