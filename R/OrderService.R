#' OrderService
#' 
#' Provides methods for creating, updating and retrieving Order objects.
#'
#' An order is a grouping of LineItem objects. Line items have a many-to-one
#' relationship with orders, meaning each line item can belong to only one
#' order, but orders can have multiple line items. An order can be used to
#' manage the line items it contains.
#' 
#' createOrders
#' 
#' Creates new Order objects.
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201905/OrderService#createOrders}{Google Documentation for createOrders}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a createOrdersResponse 
#' @examples
#' \dontrun{
#' request_data <- list('filterStatement'=list('query'="WHERE name = 'TestCompany1'"))
#' dfp_getCompaniesByStatement_result <- dfp_getCompaniesByStatement(request_data) 
#' 
#' request_data <- list(list(name='TestOrder', 
#'                           startDateTime=list(date=list(year=2018, month=12, day=1), 
#'                                              hour=0,
#'                                              minute=0,
#'                                              second=0,
#'                                              timeZoneID='America/New_York'),
#'                           endDateTime=list(date=list(year=2018, month=12, day=31), 
#'                                            hour=23,
#'                                            minute=59,
#'                                            second=59,
#'                                            timeZoneID='America/New_York'), 
#'                           notes='API Test Order', 
#'                           externalOrderId=99999, 
#'                           advertiserId=dfp_getCompaniesByStatement_result$id, 
#'                           traffickerId=dfp_getCurrentUser()$id))
#' dfp_createOrders_result <- dfp_createOrders(request_data)
#' }

#' @export
dfp_createOrders <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='OrderService', root_name='createOrders', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='createOrdersResponse', as_df=as_df)
  return(result)
}
#' 
#' getOrdersByStatement
#' 
#' Gets an OrderPage of Order objects that satisfy the given Statement query. The following fields are supported for filtering: 
#' \itemize{
#'   \item{advertiserId}
#'   \item{endDateTime}
#'   \item{id}
#'   \item{name}
#'   \item{salespersonId}
#'   \item{startDateTime}
#'   \item{status}
#'   \item{traffickerId}
#'   \item{lastModifiedDateTime}
#' }
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201905/OrderService#getOrdersByStatement}{Google Documentation for getOrdersByStatement}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getOrdersByStatementResponse 
#' @examples
#' \dontrun{
#'  dat <- list(filterStatement=list('query'="WHERE status='ACTIVE'")) 
#'  res <- dfp_getOrdersByStatement(dat)
#' }

#' @export
dfp_getOrdersByStatement <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='OrderService', root_name='getOrdersByStatement', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='getOrdersByStatementResponse', as_df=as_df)
  return(result)
}
#' 
#' performOrderAction
#' 
#' Performs actions on Order objects that match the given Statement query.
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201905/OrderService#performOrderAction}{Google Documentation for performOrderAction}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a performOrderActionResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_performOrderAction(request_data)
#' }

#' @export
dfp_performOrderAction <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='OrderService', root_name='performOrderAction', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='performOrderActionResponse', as_df=as_df)
  return(result)
}
#' 
#' updateOrders
#' 
#' Updates the specified Order objects.
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201905/OrderService#updateOrders}{Google Documentation for updateOrders}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a updateOrdersResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_updateOrders(request_data)
#' }

#' @export
dfp_updateOrders <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='OrderService', root_name='updateOrders', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='updateOrdersResponse', as_df=as_df)
  return(result)
}
#' 
