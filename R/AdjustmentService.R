#' AdjustmentService
#' 
#' Provides methods for creating, updating and retrieving Adjustment objects.
#'
#' Adjustments are used to adjust a particular ad unit for forecasting.
#' For, example you might have a manual adjustment for an inventory unit that
#' will be seeing a spike for a movie premiere coming up. Or you may have a
#' historical adjustment to tell forecasting that you have a seasonal trend
#' coming up and you want Christmas this year to look like Christmas last year
#' plus five percent.
#' 
#' getTrafficAdjustmentsByStatement
#' 
#' Returns a TrafficForecastAdjustmentPage of all TrafficForecastAdjustments that satisfy the given Statement query. The following fields are supported for filtering: 
#' \itemize{
#'   \item{id}
#'   \item{lastModifiedDateTime}
#' }
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201905/AdjustmentService#getTrafficAdjustmentsByStatement}{Google Documentation for getTrafficAdjustmentsByStatement}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getTrafficAdjustmentsByStatementResponse 
#' @examples
#' \dontrun{
#'  dat <- list(filterStatement=list('query'="WHERE status='ACTIVE'")) 
#'  res <- dfp_getTrafficAdjustmentsByStatement(dat)
#' }

#' @export
dfp_getTrafficAdjustmentsByStatement <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='AdjustmentService', root_name='getTrafficAdjustmentsByStatement', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='getTrafficAdjustmentsByStatementResponse', as_df=as_df)
  return(result)
}
#' 
#' updateTrafficAdjustments
#' 
#' Saves all of the provided traffic adjustments.
#' If there is already a TrafficForecastAdjustment saved for the same \{@@link TrafficTimeSeriesFilterCriteria\}, the pre-existing TrafficForecastAdjustment will be completely replaced with the submitted TrafficForecastAdjustment.
#' This method is only available when MAKE_TRAFFIC_FORECAST_ADJUSTMENTS_IN_BULK is enabled in the global settings on your network. Saves all of the provided traffic adjustments.
#' If there is already a TrafficForecastAdjustment saved for the same TrafficTimeSeriesFilterCriteria, the pre-existing TrafficForecastAdjustment will be completely replaced with the submitted TrafficForecastAdjustment.
#' This method is only available when MAKE_TRAFFIC_FORECAST_ADJUSTMENTS_IN_BULK is enabled in the global settings on your network. Saves all of the provided traffic adjustments.
#' If there is already a TrafficForecastAdjustment saved for the same TrafficTimeSeriesFilterCriteria, the pre-existing TrafficForecastAdjustment will be completely replaced with the submitted TrafficForecastAdjustment.
#' This method is only available when MAKE_TRAFFIC_FORECAST_ADJUSTMENTS_IN_BULK is enabled in the global settings on your network.
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201905/AdjustmentService#updateTrafficAdjustments}{Google Documentation for updateTrafficAdjustments}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a updateTrafficAdjustmentsResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_updateTrafficAdjustments(request_data)
#' }

#' @export
dfp_updateTrafficAdjustments <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='AdjustmentService', root_name='updateTrafficAdjustments', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='updateTrafficAdjustmentsResponse', as_df=as_df)
  return(result)
}
#' 
