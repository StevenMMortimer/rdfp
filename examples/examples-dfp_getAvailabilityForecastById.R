#' @examples
#' \donttest{
#' filter <- "WHERE Status='DELIVERING' LIMIT 1"
#' one_li <- dfp_getLineItemsByStatement(list(filterStatement=list(query=filter)))[[1]]
#' request_data <- list(lineItemId=one_li$id,
#'                      forecastOptions=list(includeTargetingCriteriaBreakdown='true', 
#'                                           includeContendingLineItems='true'))
#' result <- dfp_getAvailabilityForecastById(request_data)
#' }