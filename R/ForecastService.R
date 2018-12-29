#' ForecastService
#' 
#' Provides methods for estimating traffic (clicks/impressions) for line
    #' items. Forecasts can be provided for LineItem objects that exist in the
    #' system or which have not had an ID set yet.
    #' 
    #' Test Network Behavior
    #' 
    #' Test networks are unable to provide forecasts that would be comparable 
    #' to the production environment because forecasts require traffic history. 
    #' Visit the See Also section below to proceed to Google and review the details.'
#' 
#' getAvailabilityForecast
#' 
#' Gets the availability forecast for a ProspectiveLineItem. 
      #' An availability forecast reports the maximum number of available 
      #' units that the line item can book, and the total number of units 
      #' matching the line item's targeting.
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201811/ForecastService#getAvailabilityForecast}{Google Documentation for getAvailabilityForecast}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getAvailabilityForecastResponse 
#' @examples
#' \dontrun{
#' filter <- "WHERE Status='DELIVERING' LIMIT 1"
#' one_li <- dfp_getLineItemsByStatement(list(filterStatement=list(query=filter)))[[1]]
#' hypothetical_line_item <- list(lineItem=
#'                                list(id=one_li$id,
#'                                     startDateTime=one_li$startDateTime,
#'                                     endDateTime=dfp_date_to_list(Sys.Date()+100),
#'                                     lineItemType=one_li$lineItemType,
#'                                     costType=one_li$costType, 
#'                                     primaryGoal=one_li$primaryGoal, 
#'                                     targeting=one_li$targeting))
#' request_data <- list(lineItem=hypothetical_line_item,
#'                      forecastOptions=list(includeTargetingCriteriaBreakdown='true', 
#'                                           includeContendingLineItems='true'))
#' dfp_getAvailabilityForecast_result <- dfp_getAvailabilityForecast(request_data)
#' }
#' @export
dfp_getAvailabilityForecast <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='ForecastService', root_name='getAvailabilityForecast', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='getAvailabilityForecastResponse', as_df=as_df)
  return(result)
}
#' 
#' getAvailabilityForecastById
#' 
#' Gets an AvailabilityForecast for an existing LineItem object. An availability forecast reports the maximum number of available units that the line item can be booked with, and also the total number of units matching the line item's targeting.
#' Only line items having type LineItemType SPONSORSHIP or \{@@link LineItemType STANDARD\} are valid. Other types will result in \{@@link ReservationDetailsError.Reason LINE_ITEM_TYPE_NOT_ALLOWED\}. Gets an AvailabilityForecast for an existing LineItem object. An availability forecast reports the maximum number of available units that the line item can be booked with, and also the total number of units matching the line item's targeting.
#' Only line items having type LineItemType SPONSORSHIP or LineItemType STANDARD are valid. Other types will result in ReservationDetailsError.Reason LINE_ITEM_TYPE_NOT_ALLOWED. @@param lineItemId the ID of a LineItem to run the forecast on. @@param forecastOptions options controlling the forecast Gets an AvailabilityForecast for an existing LineItem object. An availability forecast reports the maximum number of available units that the line item can be booked with, and also the total number of units matching the line item's targeting.
#' Only line items having type LineItemType SPONSORSHIP or LineItemType STANDARD are valid. Other types will result in ReservationDetailsError.Reason LINE_ITEM_TYPE_NOT_ALLOWED. @@param lineItemId the ID of a LineItem to run the forecast on. @@param forecastOptions options controlling the forecast
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201811/ForecastService#getAvailabilityForecastById}{Google Documentation for getAvailabilityForecastById}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getAvailabilityForecastByIdResponse 
#' @examples
#' \dontrun{
#' filter <- "WHERE Status='DELIVERING' LIMIT 1"
#' one_li <- dfp_getLineItemsByStatement(list(filterStatement=list(query=filter)))[[1]]
#' request_data <- list(lineItemId=one_li$id,
#'                      forecastOptions=list(includeTargetingCriteriaBreakdown='true', 
#'                                           includeContendingLineItems='true'))
#' result <- dfp_getAvailabilityForecastById(request_data)
#' }
#' @export
dfp_getAvailabilityForecastById <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='ForecastService', root_name='getAvailabilityForecastById', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='getAvailabilityForecastByIdResponse', as_df=as_df)
  return(result)
}
#' 
#' getDeliveryForecast
#' 
#' Gets the delivery forecast for a list of ProspectiveLineItem objects in a single delivery simulation with line items potentially contending with each other. A delivery forecast reports the number of units that will be delivered to each line item given the line item goals and contentions from other line items. Gets the delivery forecast for a list of ProspectiveLineItem objects in a single delivery simulation with line items potentially contending with each other. A delivery forecast reports the number of units that will be delivered to each line item given the line item goals and contentions from other line items. @@param lineItems line items to be forecasted for delivery @@param forecastOptions options controlling the forecast Gets the delivery forecast for a list of ProspectiveLineItem objects in a single delivery simulation with line items potentially contending with each other. A delivery forecast reports the number of units that will be delivered to each line item given the line item goals and contentions from other line items. @@param lineItems line items to be forecasted for delivery @@param forecastOptions options controlling the forecast
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201811/ForecastService#getDeliveryForecast}{Google Documentation for getDeliveryForecast}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getDeliveryForecastResponse 
#' @examples
#' \dontrun{
#' filter <- "WHERE Status='DELIVERING' LIMIT 1"
#' one_li <- dfp_getLineItemsByStatement(list(filterStatement=list(query=filter)))[[1]]
#' hypothetical_line_item <- list(lineItem=
#'                                list(id=one_li$id,
#'                                     startDateTime=one_li$startDateTime,
#'                                     endDateTime=dfp_date_to_list(Sys.Date()+100),
#'                                     lineItemType=one_li$lineItemType,
#'                                     costType=one_li$costType, 
#'                                     primaryGoal=one_li$primaryGoal, 
#'                                     targeting=one_li$targeting))
#' request_data <- list(lineItems=hypothetical_line_item,
#'                      forecastOptions=list(ignoredLineItemIds=NULL))
#' dfp_getDeliveryForecast_result <- dfp_getDeliveryForecast(request_data)
#' }
#' @export
dfp_getDeliveryForecast <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='ForecastService', root_name='getDeliveryForecast', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='getDeliveryForecastResponse', as_df=as_df)
  return(result)
}
#' 
#' getDeliveryForecastByIds
#' 
#' Gets the delivery forecast for a list of existing LineItem objects in a single delivery simulation. A delivery forecast reports the number of units that will be delivered to each line item given the line item goals and contentions from other line items. Gets the delivery forecast for a list of existing LineItem objects in a single delivery simulation. A delivery forecast reports the number of units that will be delivered to each line item given the line item goals and contentions from other line items. @@param lineItemIds the IDs of line items to be forecasted for delivery @@param forecastOptions options controlling the forecast Gets the delivery forecast for a list of existing LineItem objects in a single delivery simulation. A delivery forecast reports the number of units that will be delivered to each line item given the line item goals and contentions from other line items. @@param lineItemIds the IDs of line items to be forecasted for delivery @@param forecastOptions options controlling the forecast
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201811/ForecastService#getDeliveryForecastByIds}{Google Documentation for getDeliveryForecastByIds}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getDeliveryForecastByIdsResponse 
#' @examples
#' \dontrun{
#' filter <- "WHERE Status='DELIVERING' LIMIT 1"
#' one_li <- dfp_getLineItemsByStatement(list(filterStatement=list(query=filter)))[[1]]
#' 
#' # not specifying forecastOptions brings up NotNullError.ARG2_NULL, so send, but keep null
#' request_data <- list(lineItemIds=one_li$id,
#'                      forecastOptions=list(ignoredLineItemIds=NULL))
#' result <- dfp_getDeliveryForecastByIds(request_data)
#' }
#' @export
dfp_getDeliveryForecastByIds <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='ForecastService', root_name='getDeliveryForecastByIds', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='getDeliveryForecastByIdsResponse', as_df=as_df)
  return(result)
}
#' 
